//
//  Masa.swift
//  PizzaAppleWatch
//
//  Created by Almudena on 23/11/16.
//  Copyright © 2016 Almudena. All rights reserved.
//

import WatchKit

class Masa: NSObject {

    var masa:String=""
    
    init(m: String) {
        masa=m

    }
    
    func getMasa()->String{
        return masa
    }
}
