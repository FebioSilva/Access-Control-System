
import isel.leic.utils.Time

object KBD { // Ler teclas. Métodos retornam ‘0’..’9’,’#’,’*’ ou NONE.
    const val ACK=0x80
    const val DVAL=0x10
    const val CODE=0x0F
    const val NONE = 0.toChar()
    private val DIGITS = arrayOf('1','4','7','*','2','5','8','0','3','6','9','#')

    // Inicia a classe
    fun init() {
        HAL.clrBits(ACK)//Coloca o Kack a '0'

    }
    // Retorna de imediato a tecla premida ou NONE se não há tecla premida.
    fun getKey(): Char {
        var digit = NONE
        if(HAL.isBit(DVAL)){
            if(HAL.readBits(CODE)<12) {
                digit = DIGITS[HAL.readBits(CODE)]
            }
            HAL.setBits(ACK)
            while(HAL.isBit(DVAL));
            HAL.clrBits(ACK)
        }
        return digit
    }

// Retorna a tecla premida, caso ocorra antes do ‘timeout’ (representado em milissegundos), ou NONE caso contrário.

    fun waitKey(timeout: Long): Char {
        val timelimit=Time.getTimeInMillis()+timeout
        var key=NONE
        while(Time.getTimeInMillis()<timelimit){
            if(HAL.isBit(DVAL)) {
                key = getKey()
            }
            if(key!=NONE){
                break
            }
        }
        return key
    }
}
fun main() {
    HAL.init()
    KBD.init()
    while (true) {
        val key = KBD.getKey()
        if(key!=KBD.NONE) println(key)
    }
}