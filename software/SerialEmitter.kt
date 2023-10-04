import isel.leic.utils.Time

object SerialEmitter { // Envia tramas para os diferentes módulos Serial Receiver.
    enum class Destination { LCD, DOOR }

    private const val SDX = 0x08
    private const val SCLK = 0x10
    private const val LCDSELECT = 0x01
    private const val DOORSELECT = 0x02
    private const val BUSY = 0x40

    // Inicia a classe
    fun init() {
        HAL.setBits(LCDSELECT)
        HAL.setBits(DOORSELECT)
        HAL.clrBits(SCLK)
    }

    // Envia uma trama para o SerialReceiver identificado o destino em addr e os bits de dados em ‘data’.
    fun send(addr: Destination, data: Int) {
        var sdx=data
        var ss = 0
        if (addr == Destination.LCD) {
            ss = LCDSELECT
        } else if (addr == Destination.DOOR) {
            ss = DOORSELECT
        }
        HAL.clrBits(ss)
        repeat(5) {
            Time.sleep(1)
            val lastBit=sdx%2
            if(lastBit==1) HAL.setBits(SDX)
            else HAL.clrBits(SDX)
            sdx/=2
            HAL.setBits(SCLK)
            Time.sleep(1)
            HAL.clrBits(SCLK)
        }
        HAL.clrBits(SCLK)
        HAL.setBits(ss)
    }

    // Retorna true se o canal série estiver ocupado
    fun isBusy(): Boolean {
        return HAL.isBit(BUSY)
    }
}
fun main(){

}
