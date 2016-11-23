//
//  Tamanyo.swift
//  PizzaAppleWatch
//
//  Created by Almudena on 23/11/16.
//  Copyright © 2016 Almudena. All rights reserved.
//

import WatchKit

class Tamanyo: NSObject {
    var tamanyo:String=""
    
    init(tam:String) {
        tamanyo=tam

    }
    
    func getTamanyo()->String{
        return tamanyo
    }

}
