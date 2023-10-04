import isel.leic.utils.Time
import kotlin.system.exitProcess

object M{ //Modo de manutenção da aplicação
    const val MANUT=0x80

    //Pergunta ao utilizador o username e pin para o novo user
    private fun addUserM(){
        println("Username must be under 16 characters.")
        println("PIN must be 4 digits.")
        var name:String
        while(true){
            print("Username= ")
            name= readln()
            if(name=="EXIT"){
                println("Command aborted.")
                return
            }
            if(name.length<=16) break
            println("Username length exceeded.")
        }
        var pin:String
        while(true){
            print("PIN= ")
            pin= readln()
            println(pin)
            if(pin=="EXIT"){
                println("Command aborted.")
                return
            }
            if(pin.length==4) break
            println("Invalid PIN.")
        }
        val newId=Users.getNewId(Users.users)
        Users.addUser(newId,name,pin)
        println("Adding User=$name with UID=$newId")
        println()
    }

    //Pergunta ao utilizador o id do user a remover do sistema
    private fun removeUser(){
        print("UIN= ")
        val id= readln()
        if(id=="EXIT"){
            println("Command aborted.")
            return
        }
        else id.toInt().toString()
        while(true){
            if (Users.checkExistingUser(id)!=null) break
                println("User does not exist.")
        }
        println("Remove user=${Users.checkExistingUser(id)!!.name}")
        print("Y/N?")
        if(readln()=="Y"){
            println("User=${Users.checkExistingUser(id)!!.name} removed.")
            Users.removeUser(id)
            println()
        }
        else{
            println("Command aborted.")
            println()
        }
    }

    //Pergunta ao utilizador o id do user e a mensagem desejada a ser adicionada
    private fun addMsg(){
        print("UIN= ")
        val id= readln().toInt().toString()
        while(true){
            if (Users.checkExistingUser(id)!=null) break
            println("User does not exist.")
        }
        print("Message= ")
        val message= readln()
        Users.changeMessage(id,message,Users.Operation.ADD)
        println("The message $message has been associated to user=$id ")
        println()
    }

    //Encerra a aplicação
    private fun shutDown(){
        LCD.cursor(1,0)
        TUI.centerMessageDisplay("Shutting down...")
        Time.sleep(4000)
        FileAccess.writeUsersFile(Users.users)
        exitProcess(0)
    }

    //Fornece ao utilizador um guião de funcionalidades do modo de manutenção
    private fun helpText(){
        println("NEW: Adds new user;")
        println("DEL: Deletes an existing user;")
        println("MSG: Adds or changes the login message to an existing user;")
        println("EXIT: Aborts the current command;")
        println("OFF: Shutdown the system.")
        println()
    }

    //Avisa no LCD que a aplicação esta no modo de manutenção e lê as ações desejadas do terminal
    fun maintenance(){
        LCD.clear()
        LCD.cursor(0,0)
        TUI.centerMessageDisplay("Out of Service")
        LCD.cursor(1,0)
        TUI.centerMessageDisplay("Please Wait")
        println("Turn M key to off, to terminate maintenance mode.")
        println("Commands: NEW, DEL, MSG, OFF, EXIT, or HELP")
        while (true) {
            if(!HAL.isBit(MANUT)) break
            print("Maintenance> ")
            when (readln()){
                "NEW" -> addUserM()
                "DEL" -> removeUser()
                "MSG" -> addMsg()
                "OFF" -> shutDown()
                "HELP" -> helpText()
                "EXIT" -> println("not currently in any command.")
                else  -> println("Invalid Command.")
            }
        }
        println("Exiting maintenance mode...")
    }
}