import paquetes.*

object empresa{
    const mensajeros = []
    method mensajeros(){
        return mensajeros
    }
    method contratarUnMensajero(unMensajero){
        mensajeros.add(unMensajero)
    }
    method despedirUnMensajero(unMensajero){
        mensajeros.remove(unMensajero)
    }
    method despedirATodos(){
        mensajeros.clear()
    }
    method agregarListaDeMensajeros(listaMensajeros){
        mensajeros.addAll(listaMensajeros)
    }
     method eliminarListaDeMensajeros(listaMensajeros){
        mensajeros.removeAll(listaMensajeros)
    }
    method esGrande(){
        return mensajeros.size() > 2
    }
    method puedeSerEntregadoPorElPrimerMensajero(unPaquete){
        return unPaquete.puedeSerEntregado(mensajeros.fisrt())
    }
    method pesoUltimoMensajero(){
        return self.ultimoEmpleado().pesoTotal()
    }
    method ultimoEmpleado(){
        return mensajeros.last()
    }
}