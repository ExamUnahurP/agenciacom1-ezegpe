class Packs{
    var property duracionDias 
    var property precioBase 
    var property beneficiosEspeciales 
    var coordinador  
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
    const property cantidaDeViajesRealizados 
    var property estaMotivado 
    const property añosDeExperiencia 
    var property rol 

}

class BeneficiosEspeciales{
    var property tipo 
    const property costo 
    var property estaVigente 
}