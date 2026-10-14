class Packs{
    var property duracionDias 
    var property precioBase 
    const property beneficiosEspeciales = [] 
    var property coordinador  
}

class PacksNacionales inherits Packs{
    var property proviciaDestino 
    const actividades = []

}

class PackInternaciones inherits Packs{
    var property paisDestino
    var property cantidadEscalas 
    var property esLugarDeInteres 
}

class Coordinador{
    var property cantidaDeViajesRealizados 
    var property estaMotivado 
    var property añosDeExperiencia 
    var rol

    method rol() = rol

    method cambiarRol(rolNuevo){
        if (!["Guia", "Asistente Logistico", "Acompañante"].contains(rolNuevo)){
            self.error("Este rol no existe")
        }

        rol = rolNuevo
    }

}

class BeneficiosEspeciales{
    var property tipo 
    const property costo 
    var property estaVigente 
}