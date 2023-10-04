import java.io.BufferedReader
import java.io.BufferedWriter
import java.io.FileReader
import java.io.FileWriter
import java.io.PrintWriter
import java.time.LocalDateTime

object FileAccess { //Acede aos ficheiros externos à aplicação

    private val br = BufferedReader(FileReader("USERS.txt"))
    private val fileWriterLog = FileWriter("LOG.txt", true)
    private val pwLog = PrintWriter(fileWriterLog)

    //Lê o ficheiro USERS.txt e guarda numa MutableList de Users.User as informações de cada utilizador
    fun readUsersFile(): MutableList<Users.User> {
        var line=br.readLine()
        val users = mutableListOf<Users.User>()
        while(line!=null) {
            val data=(line.split(Regex(";")))
            users.add(Users.User(data[0],data[1],data[2],data[3]))
            line=br.readLine()
        }
        return users
    }

    //Escreve no ficheiro USERS.txt as informações dos utilizadores da MutableList users
    fun writeUsersFile(users:MutableList<Users.User>){
        val fileWriterUsers = FileWriter("USERS.txt", false)
        val pwUsers= PrintWriter(fileWriterUsers)
        users.forEach {
            pwUsers.print("${it.id};${it.pin};${it.name};${it.message};")
            pwUsers.println()
        }
        pwUsers.close()
    }

    //Quando um utilizador faz login, escreve no ficheiro LOG.txt o utilizador que realizou o login e a data
    fun writeLogFile(user:Users.User){
        pwLog.print("Time: ${LocalDateTime.now().format(TUI.timeFormat)}  ")
        pwLog.print("ID: ${user.id} -> ")
        pwLog.print("Name: ${user.name}")
        pwLog.println()
        pwLog.close()
    }
}

fun main(){
    val users= mutableListOf(
        Users.User("0","2345","Joao pedro",""),
        Users.User("1","1234","Gustavo Maria",""),
        Users.User("2","4321","Daniel Monteiro","Welcome"),
        Users.User("4","5678","Pedro Miguel","Bem vindo")
    )
    println(Users.getNewId(users))
}