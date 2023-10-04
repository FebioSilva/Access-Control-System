import isel.leic.utils.Time

object App { //Sistema de controlo de acessos

    //Verifica se o login foi bem sucedido
    private fun loginSuccess(): Boolean = Users.currentUser != null

    //Sistema de controlo de acessos
    fun accessControlSystem() {
        while(true){
            val id= mutableListOf<Char>()
            val pin= mutableListOf<Char>()
            TUI.init()
            TUI.idTUI(id)
            TUI.pinTUI(id,pin)

            Users.currentUser = Users.findUser(id.joinToString(""), pin.joinToString(""), Users.users)
            if(loginSuccess())TUI.loginSuccessInterface()
            else {
                LCD.cursor(1, 0)
                TUI.centerMessageDisplay("Login Failed")
                Time.sleep(2000)
            }
            LCD.clear()
            FileAccess.writeUsersFile(Users.users)
        }
    }
}
fun main(){
    HAL.init()
    KBD.init()
    SerialEmitter.init()
    LCD.init()
    App.accessControlSystem()
}
