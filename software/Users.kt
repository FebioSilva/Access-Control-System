
object Users {
    var currentUser: User? = null

    data class User(val id: String, var pin: String, val name: String, val message: String)

    var users = FileAccess.readUsersFile()

    enum class Operation {ADD, REMOVE}

    //Procura na lista de Users se algum utilizador corresponde ao id e pin do utilizador, se encontrar retorna a informaçao do utilizador, se não, retornal null
    fun findUser(id: String, password: String, users: List<User>): User? {
        val encodedPassword = passwordEncoder(password)
        for (user in users) {
            if (id.toInt().toString() == user.id && encodedPassword == user.pin) {
                return user
            }
        }
        return null
    }

    //Adiciona utilizadores ao sistema
    fun addUser(id: String, name: String, pin: String){
        User("","","","") //inicialização da variavel
        var i=0
        for(u in users){
            if(u.id==id) break
            i++
        }
        users.add(User(id, passwordEncoder(pin), name, ""))
    }

    //Remove utilizadores do sistema
    fun removeUser(id:String){
        var i=0
        for(u in users){
            if(u.id==id) break
            i++
        }
        users.removeAt(i)
    }

    //Adiciona ou remove mensagens dos utilizador
    fun changeMessage(id: String, message: String, operation: Operation) {
        var user=User("","","","") //inicialização da variavel
        var i=0
        for(u in users){
            if(u.id==id){
                user=u
                break
            }
            i++
        }
        user = if (operation == Operation.ADD) User(user.id, user.pin, user.name, message = message)
        else User(user.id, user.pin, user.name, message = "")
        users[i]=user
    }

    //Troca o pin anterior pelo novo pin
    fun changePin(id: String,newPin:String){
        var i=0
        for(u in users){
            if(u.id==id)break
            i++
        }
        users[i].pin=newPin
    }

    //Codifica o pin para registar no ficheiro USERS.txt
    private fun passwordEncoder(password: String): String = password.reversed()

    //Atribui um novo id a um novo utilizador
    fun getNewId(users: List<User>): String {
        var newId = 0
        for (user in users) {
            if (newId == user.id.toInt()) newId++
        }
        return newId.toString()
    }

    //Verifica se esse utilizador existe, se nao existir retorna null
    fun checkExistingUser(id:String):User?{
        for(user in users){
            if(user.id==id) return user
        }
        return null
    }
}

fun main(){

}