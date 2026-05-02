import mensajeros.*

object brooklyn{
    method dejaPasar(unMensajero){
        return unMensajero.pesoTotal() <= 1000
    }
}

object laMatriz{
    method dejaPasar(unMensajero){
        return unMensajero.puedeLlamar()
    }
}
