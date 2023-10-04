import isel.leic.UsbPort
object HAL { // Virtualiza o acesso ao sistema UsbPort
    // Inicia a classe
    var lastoutput=0x00
    fun init(){
        UsbPort.write(lastoutput)
    }
    // Retorna true se o bit tiver o valor lógico ‘1’
    fun isBit(mask: Int): Boolean {
        return (UsbPort.read() and mask) != 0
    }
    // Retorna os valores dos bits representados por mask presentes no UsbPort
    fun readBits(mask: Int): Int {
        return (UsbPort.read() and mask)
    }
    // Escreve nos bits representados por mask o valor de value
    fun writeBits(mask: Int, value: Int){
        val newvalue=(lastoutput and mask.inv())or(mask and value)
        UsbPort.write(newvalue)
        lastoutput=newvalue
    }
    // Coloca os bits representados por mask no valor lógico ‘1’
    fun setBits(mask: Int){
        writeBits(mask,mask)
    }
    // Coloca os bits representados por mask no valor lógico ‘0’
    fun clrBits(mask: Int){
        writeBits(mask,0)
    }
}