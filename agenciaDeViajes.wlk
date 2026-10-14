class Packs{
    var property duracionDias 
    var property precioBase 
    const property beneficiosEspeciales = [] 
    var property coordinador

    method costoBeneficiosVigentes(){
        return beneficiosEspeciales.filter({beneficio => beneficio.estaVigente()}).sum({beneficio => beneficio.costo()})
    }

    method valorFinal() = precioBase + self.costoBeneficiosVigentes()

    method esPremium()
    
}

class PacksNacionales inherits Packs{
    var property proviciaDestino 
    const actividades = []

    method esPremium() = duracionDias > 10 and coordinador.esAltamenteCalificado()

    
}

class PackInternaciones inherits Packs{
    var property paisDestino
    var property cantidadEscalas 
    var property esLugarDeInteres

    override method valorFinal(){
        return super() * 1.20 
    }

    method esPremium() = esLugarDeInteres and duracionDias > 20 and cantidadEscalas == 0
}

class Coordinador{
    var property cantidaDeViajesRealizados 
    var property estaMotivado 
    var property añosDeExperiencia 
    var rol

    method rol() = rol

    method cambiarRol(rolNuevo){

        const rolesValidos = ["Guia", "Asistente Logisitco", "Acomapañante"]
        if (!rolesValidos.contains(rolNuevo)){
            self.error("Este rol no es valido")
        }

        rol = rolNuevo
    }
    method cumpleCondicionPorRol(){
        if (rol == "Guia"){
            return estaMotivado
        } else if  (rol == "Asistente Logistico"){
            return añosDeExperiencia >= 3 
        } else if (rol == "Acompañante"){
            return true 
        }
    }
    method esAltamenteCalificado() = cantidaDeViajesRealizados > 20 and self.cumpleCondicionPorRol()

}

class BeneficiosEspeciales{
    var property tipo 
    const property costo 
    var property estaVigente 
}

class PacksProvinciales inherits PacksNacionales{
    var property ciudadesAVisitar 

    override method esPremium() = actividades.size() >= 4 and ciudadesAVisitar > 5 and 
}