class Packs{
    var property duracionDias 
    var property precioBase 
    const property beneficiosEspeciales = [] 
    var property coordinador

    method costoBeneficiosVigentes(){
        return beneficiosEspeciales.filter({beneficio => beneficio.estaVigente()}).sum({beneficio => beneficio.costo()})
    }

    method valorFinal() = precioBase + self.costoBeneficiosVigentes()
    
}

class PacksNacionales inherits Packs{
    var property proviciaDestino 
    const actividades = []

    
}

class PackInternaciones inherits Packs{
    var property paisDestino
    var property cantidadEscalas 
    var property esLugarDeInteres

    override method valorFinal(){
        return super() * 1.20 
    }
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

    method esCalificado() =

}

class BeneficiosEspeciales{
    var property tipo 
    const property costo 
    var property estaVigente 
}