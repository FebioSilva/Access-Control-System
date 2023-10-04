object Log{
    fun addToLog(user:Users.User){
        FileAccess.writeLogFile(user)
    }
}