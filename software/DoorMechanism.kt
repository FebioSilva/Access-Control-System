import isel.leic.utils.Time

object DoorMechanism { // Controla o estado do mecanismo de abertura da porta.

    // Envia comando para abrir a porta, com o parâmetro de velocidade
    private fun open(velocity: Int){
        var data = velocity.toString(2)
        data +=1 //adiciona o bit 1
        SerialEmitter.send(SerialEmitter.Destination.DOOR,data.toInt())
    }
    // Envia comando para fechar a porta, com o parâmetro de velocidade
    private fun close(velocity: Int){
        var data = velocity.toString(2)
        data +=0 //adiciona o bit 0
        SerialEmitter.send(SerialEmitter.Destination.DOOR,data.toInt())
    }

    // Verifica se o comando anterior está concluído
    private fun finished() : Boolean=!SerialEmitter.isBusy()

    //Funcionamento de abertura e fecho da porta e as respetivas mensagens
    fun doorMechanism(){
        LCD.cursor(0,0)
        Users.currentUser?.let { TUI.centerMessageDisplay(it.name) }
        LCD.cursor(1,0)
        TUI.centerMessageDisplay("Opening...")
        open(2)
        while(!finished());
        LCD.cursor(1,0)
        TUI.centerMessageDisplay("Opened")
        Time.sleep(3000)
        close(2)
        LCD.cursor(1,0)
        TUI.centerMessageDisplay("Closing...")
        while(!finished());
        LCD.cursor(1,0)
        TUI.centerMessageDisplay("Closed")
        Time.sleep(1000)
    }
}
/* Funções testadas na main:
   -doorMechanism()
 */
fun main(){
    HAL.init()
    KBD.init()
    SerialEmitter.init()
    LCD.init()
    DoorMechanism.doorMechanism()
}