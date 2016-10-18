//
//  Jugadores.swift
//  TableView y Tab Bar
//
//  Created by Isaac Mac on 17/10/16.
//  Copyright (c) 2016 Isaac Mac. All rights reserved.
//

import Foundation

class Jugadores{
    var nombre: String?
    var edad: Int?
    var imagen: String?
    
    init(nombre: String, edad:Int, imagen: String){
        self.nombre = nombre
        self.edad = edad
        self.imagen = imagen
    }
    
    func getNombre() -> String{
        return self.nombre!
    }
    
    func getEdad() -> Int{
        return self.edad!
    }
    
    func getImagen() -> String{
        return self.imagen!
    }
}