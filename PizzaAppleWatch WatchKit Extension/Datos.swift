//
//  Datos.swift
//  PizzaAppleWatch
//
//  Created by Almudena on 23/11/16.
//  Copyright © 2016 Almudena. All rights reserved.
//

import WatchKit

class Datos: NSObject {
    
    var datos:[String]=[""]
    
    init(dato: String) {
        datos.append(dato)
    }

    
    func getDatos()->[String]{
        return datos
    
    }
    
    func addDato(d: String){
        self.datos.append(d)
    }
    
    func addPos1(ingre:String){
        self.datos[1]=ingre
    }
}
