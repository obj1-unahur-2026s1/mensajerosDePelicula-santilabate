import destinos.*
import mensajeros.*

object paquete{
    var estaPago = false
    var destino = brooklyn
    
    method cambiarDestino(nuevoDestino){
        destino = nuevoDestino
    } 
    // method estaPago() = estaPago
    method registrarPago(){
        estaPago = true
    } 

    method cancelarPago(){
        estaPago = false
    }

    method puedeSerEntregado(unMensajero){
        return estaPago && destino.dejaPasar(unMensajero)
    }
}

object paquetito{
    method estaPago(){
        return true
    }

    method puedeSerEntregado(unMensajero){
        return true
    }
}


object paquetonViajero{
    const destinos = []
    var importePagado = 0

    method estaPago(){
        self.precioTotal() == importePagado 
    }

    method pagoParcial(unValor){
        importePagado = (importePagado + unValor).min(self.precioTotal())
    }
    method precioTotal(){
        return destinos.size() *100
    }
    method puedeSerEntregado(unMensajero){
        return self.estaPago() && destinos.all ({d => d.dejaPasar(unMensajero)})
    }
}
