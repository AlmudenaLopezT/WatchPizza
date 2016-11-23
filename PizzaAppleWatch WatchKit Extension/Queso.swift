//
//  Queso.swift
//  PizzaAppleWatch
//
//  Created by Almudena on 23/11/16.
//  Copyright © 2016 Almudena. All rights reserved.
//

import WatchKit

class Queso: NSObject {
    
    var queso:String=""
    
    init(q:String) {
        queso=q
    }
    
    func getQueso()->String{
        return queso
    }

}
