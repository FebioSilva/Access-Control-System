import isel.leic.utils.Time
import java.time.LocalDateTime
import java.time.format.DateTimeFormatter

object TUI { //Faz a ligação entre o utilizador e o sistema

    val timeFormat: DateTimeFormatter = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss")
    val time: String = LocalDateTime.now().format(timeFormat)

    //Escreve a data no display
    fun init() {
        LCD.clear()
        LCD.write(time)
    }

    //Escreve no LCD a data e as horas, e pergunta o ID do utilizador, e retorna os dígitos introduzidos.
    fun idTUI(id: MutableList<Char>): String {
        LCD.cursor(1, 0)
        LCD.write("UIN:???")
        var cursor = 4
        LCD.cursor(1, cursor)
        while (id.size < 3) {
            if (HAL.isBit(M.MANUT)) {
                M.maintenance()
                App.accessControlSystem()
            }
            var key: Char
            while (true) {
                key = KBD.getKey()
                if (key != KBD.NONE && key!= '#') break
            }
            if (key == '*') {
                if (id.isNotEmpty()) {
                    id.removeAt(id.size - 1)
                    cursor--
                }
                LCD.cursor(1, cursor)
                LCD.write('?')
            } else {
                id.add(key)
                LCD.cursor(1, cursor)
                LCD.write(key)
                cursor++
            }
        }
        return id.joinToString("")
    }

    //Pergunta ao utilizador o PIN e retorna o que for escrito. se não for escrito nada em 6 segundos, escreve no LCD "Login Timeout".
    fun pinTUI(id: MutableList<Char>, pin: MutableList<Char>): String {
        LCD.cursor(1, 0)
        LCD.write("PIN:????")
        var cursor = 4
        LCD.cursor(1,cursor)
        while (pin.size < 4) {
            if (HAL.isBit(M.MANUT)) {
                M.maintenance()
                App.accessControlSystem()
            }
            val key = KBD.waitKey(6000)
            if (key == KBD.NONE && key!= '#') {
                LCD.cursor(1, 0)
                centerMessageDisplay("Login Timeout")
                Time.sleep(2000)
                App.accessControlSystem()
            }

            if (key == '*') {
                if (pin.isNotEmpty()) {
                    pin.removeAt(pin.size - 1)
                    cursor--
                    LCD.cursor(1,cursor)
                    LCD.write("?")
                }
                else App.accessControlSystem()
            }
            else {
                pin.add(key)
                LCD.cursor(1, cursor)
                LCD.write('*')
                cursor++
            }
        }
        return pin.joinToString("")
    }

    //Centra as mensagens no display
    fun centerMessageDisplay(message: String) {
        if (message.length > 16) {
            val listMessage = message.split(" ").toMutableList()
            val firstPart = listMessage.subList(0, listMessage.size / 2).joinToString(" ")
            val secondPart = listMessage.subList(listMessage.size / 2, listMessage.size).joinToString(" ")
            val marginSize1 = (LCD.LCD_SIZE - firstPart.length) / 2
            val margin1 = " ".repeat(marginSize1)
            LCD.write(margin1 + firstPart + margin1)
            LCD.cursor(1, 0)
            val marginSize2 = (LCD.LCD_SIZE - secondPart.length) / 2
            val margin2 = " ".repeat(marginSize2)
            LCD.write(margin2 + secondPart + margin2)
        } else {
            val marginSize = (LCD.LCD_SIZE - message.length) / 2
            val margin = " ".repeat(marginSize)
            LCD.write(margin + message + margin)
        }
    }

    //Confirma com o utilizador se quer trocar o pin, e pede ao utilizador para inserir o novo pin 2 vezes, se não forem iguais, cancela a troca de pin
    private fun newPinInterface(): String? {
        val pinFirst = mutableListOf<Char>()
        val pinSecond = mutableListOf<Char>()
        LCD.clear()
        LCD.cursor(0, 0)
        centerMessageDisplay("Change PIN?")
        LCD.cursor(1, 0)
        centerMessageDisplay("Yes=1  No=2")
        while (true) {
            if (KBD.getKey() == '2') return null
            if (KBD.getKey() == '1') break
        }
        LCD.clear()
        LCD.cursor(0, 0)
        centerMessageDisplay("Insert new:")
        LCD.cursor(1, 0)
        LCD.write("PIN:????")
        var cursor = 4
        LCD.cursor(1,cursor)
        while (pinFirst.size < 4) {
            var key: Char
            while (true) {
                key = KBD.getKey()
                if (key != KBD.NONE) break
            }
            if (key == '*') {
                if (pinFirst.isNotEmpty()) {
                    pinFirst.removeAt(pinFirst.size - 1)
                    cursor--
                    LCD.write("?")
                    LCD.cursor(1,cursor)
                }
                LCD.cursor(1, cursor)
                LCD.write('*')
            } else {
                pinFirst.add(key)
                LCD.cursor(1, cursor)
                cursor++
            }
        }
        LCD.clear()
        LCD.cursor(0, 0)
        centerMessageDisplay("Confirm PIN:")
        LCD.cursor(1, 0)
        LCD.write("PIN:****")
        cursor = 4
        while (pinSecond.size < 4) {
            var key: Char
            while (true) {
                key = KBD.getKey()
                if (key != KBD.NONE) break
            }
            if (key == '*') {
                if (pinSecond.isNotEmpty()) {
                    pinSecond.removeAt(pinSecond.size - 1)
                    cursor--
                }
                LCD.cursor(1, cursor)
                LCD.write('*')
            } else {
                pinSecond.add(key)
                LCD.cursor(1, cursor)
                cursor++
            }
        }
        LCD.clear()
        centerMessageDisplay("PIN")
        if (pinFirst == pinSecond) {
            LCD.cursor(1, 0)
            centerMessageDisplay("has been changed")
            return pinFirst.joinToString("")
        } else {
            LCD.cursor(1, 0)
            centerMessageDisplay("change failed")
            return null
        }
    }

    //Mostra as mensagens após o login e verifica se o utilizador quer trocar o pin ou apagar a mensagem de login
    fun loginSuccessInterface() {
        LCD.clear()
        LCD.cursor(0, 0)
        centerMessageDisplay("Hello")
        LCD.cursor(1, 0)
        centerMessageDisplay(Users.currentUser!!.name)
        Time.sleep(1500)
        LCD.clear()
        LCD.cursor(0, 0)
        if (KBD.waitKey(2000) == '#') {
            val newPin = newPinInterface()
            if (newPin != null) Users.changePin(Users.currentUser!!.id.toInt().toString(), newPin)
        }
        if (Users.currentUser!!.message.isNotEmpty()) {
            centerMessageDisplay(Users.currentUser!!.message)
            if (KBD.waitKey(2000) == '*') deleteMessage()
        }
            Log.addToLog(Users.currentUser!!)
            DoorMechanism.doorMechanism()
    }

    //Confirma e apaga a mensagem de login do utilizador
    private fun deleteMessage(){
        LCD.clear()
        centerMessageDisplay("Remove MSG?")
        LCD.cursor(1, 0)
        centerMessageDisplay("Yes=*")
        if (KBD.waitKey(2000) == '*') {
            Users.changeMessage(Users.currentUser!!.id, Users.currentUser!!.message, Users.Operation.REMOVE)
            LCD.clear()
            centerMessageDisplay("Message has been changed")
        } else {
            LCD.clear()
            centerMessageDisplay("Message has been helded")
        }
    }
}

fun main(){
    HAL.init()
    SerialEmitter.init()
    LCD.init()
    TUI.centerMessageDisplay("Turing machine is ready")
}