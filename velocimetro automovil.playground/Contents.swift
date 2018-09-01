//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades ){
        self = velocidadInicial
    }
}

class Auto{
    var velocidad : Velocidades
    
    init(){
        self.velocidad = Velocidades.Apagado
    }
    
    func cambioDeVelocidad() -> (Int, String) {
        var tupla : (Int, String)
        switch velocidad{
        case .Apagado :
            tupla = (velocidad.rawValue, "Apagado")
            velocidad = Velocidades.VelocidadBaja
            
        case .VelocidadBaja:
            tupla = (velocidad.rawValue, "Velocidad Baja")
            velocidad = Velocidades.VelocidadMedia
            
        case .VelocidadMedia:
            tupla = (velocidad.rawValue, "Velocidad Media")
            velocidad = Velocidades.VelocidadAlta
            
        case .VelocidadAlta:
            tupla = (velocidad.rawValue, "Velocidad Alta")
            velocidad = Velocidades.VelocidadMedia
        }
        return tupla
    }
}

var auto = Auto()

for _ in 0...5 {
    print(auto.cambioDeVelocidad())
}
