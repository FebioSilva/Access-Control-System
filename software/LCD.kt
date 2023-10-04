import isel.leic.utils.Time
object LCD { // Escreve no LCD usando a interface a 4 bits.
    enum class WriteType {PARALLEL, SERIAL}
    private var writeType=WriteType.SERIAL
    private var rsInt = 0
    private const val LINE_VALUE = 0x40
    private const val COL_VALUE = 1
    private const val LCD_D = 0x0F
    private const val LCD_RS = 0x10
    private const val LCD_E = 0x20
    private const val LCD_HIGH = 0xF0
    private const val LCD_LOW = 0x0F
    //Instructions
    private const val RETURN_HOME = 0x02
    private const val DISPLAY_OFF = 0x00
    private const val DISPLAY_ON = 0x0F
    private const val CLEAR_DISPLAY = 0x01
    private const val ENTRY_MODE_SET = 0x06
    private const val SET_DDRAM_ADRESS = 0x80
    const val LCD_SIZE=16

    // Escreve um nibble de comando/dados no LCD em paralelo
    private fun writeNibbleParallel(rs: Boolean, data: Int){
        if(!rs) HAL.clrBits(LCD_RS)
        else HAL.setBits(LCD_RS)
        Time.sleep(1)
        HAL.writeBits(LCD_D,data)
        HAL.setBits(LCD_E)
        Time.sleep(1)
        HAL.clrBits(LCD_E)
        Time.sleep(1)
    }
    // Escreve um nibble de comando/dados no LCD em série
    private fun writeNibbleSerial(rs: Boolean, data: Int){
        rsInt = 0
        if(rs) rsInt=1
        var sdata = data shl 1
        sdata += rsInt
        SerialEmitter.send(SerialEmitter.Destination.LCD,sdata)
    }
    // Escreve um nibble de comando/dados no LCD
    private fun writeNibble(rs: Boolean, data: Int){
        if(writeType==WriteType.PARALLEL) writeNibbleParallel(rs,data)
        else if(writeType==WriteType.SERIAL) writeNibbleSerial(rs,data)
    }
    // Escreve um byte de comando/dados no LCD
    private fun writeByte(rs: Boolean, data: Int){
        writeNibble(rs,data shr 4)
        writeNibble(rs,data and LCD_LOW)
    }
    // Escreve um comando no LCD
    private fun writeCMD(data: Int){
        writeByte(false,data)
    }
    // Escreve um dado no LCD
    private fun writeDATA(data: Int){
        writeByte(true,data)
    }
    // Envia a sequência de iniciação para comunicação a 4 bits.
    fun init(){
        Time.sleep(15)
        writeNibble(false,0x03)
        Time.sleep(5)
        writeNibble(false,0x03)
        Time.sleep(1/10)
        writeNibble(false,0x03)
        writeNibble(false,RETURN_HOME)
        writeCMD(0x02)
        writeCMD(0x08)
        writeCMD(DISPLAY_OFF)
        writeCMD(0x08)
        writeCMD(DISPLAY_OFF)
        writeCMD(CLEAR_DISPLAY)
        writeCMD(DISPLAY_OFF)
        writeCMD(ENTRY_MODE_SET)
    }
    // Escreve um caráter na posição corrente.
    fun write(c: Char){
        writeDATA(c.code)
        writeCMD(DISPLAY_ON)
    }

    // Escreve uma string na posição corrente.
    fun write(text: String){
        for(c in text)
            write(c)
    }
    // Envia comando para posicionar cursor (‘line’:0..LINES-1 , ‘column’:0..COLS-1)
    fun cursor(line: Int, column: Int){
        val cursorMove = SET_DDRAM_ADRESS + line*LINE_VALUE + column*COL_VALUE
        writeCMD(cursorMove)
    }
    // Envia comando para limpar o ecrã e posicionar o cursor em (0,0)
    fun clear(){
        writeCMD(CLEAR_DISPLAY)
    }
}

fun main(){
    HAL.init()
    SerialEmitter.init()
    LCD.init()
    LCD.write("ABD")
    LCD.cursor(1,10)
    LCD.write("D")
}