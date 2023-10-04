import isel.leic.utils.Time

object Test{
    fun pinTUI(pin:MutableList<Char>):String{
        LCD.cursor(1, 0)
        LCD.write("PIN:****")
        var cursor=4
        while(pin.size<4){
            if(HAL.isBit(M.MANUT)){
                M.maintenance()
                App.accessControlSystem()
            }
            val key = KBD.waitKey(6000)
            if(key==KBD.NONE){
                LCD.cursor(1, 0)
                TUI.centerMessageDisplay("Login Timeout")
                Time.sleep(2000)
                App.accessControlSystem()
            }
            if(key=='*') {
                if(pin.isNotEmpty()){
                    pin.removeAt(pin.size - 1)
                    cursor--
                }
                LCD.cursor(1,cursor)
                LCD.write('*')
                println("*=$cursor")
            }
            else{
                pin.add(key)
                LCD.cursor(1,cursor)
                LCD.write(key)
                println("cursor=$cursor")
                cursor++
            }
        }
        return pin.joinToString("")
    }

}
fun main(){
    HAL.init()
    KBD.init()
    SerialEmitter.init()
    LCD.init()
    Test.pinTUI(mutableListOf())

}