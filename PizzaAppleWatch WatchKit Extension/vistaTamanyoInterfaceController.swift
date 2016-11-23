//
//  vistaTamanyoInterfaceController.swift
//  PizzaAppleWatch
//
//  Created by Almudena on 18/11/16.
//  Copyright © 2016 Almudena. All rights reserved.
//

import WatchKit
import Foundation


class vistaTamanyoInterfaceController: WKInterfaceController {

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
       
        //Creacion valores picker
        var tamanyos:[WKPickerItem] = []

        for i in tam{
            let item = WKPickerItem()
            item.title=i
            tamanyos.append(item)
        }
        self.pickerTamanyo.setItems(tamanyos)

        
        
        
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    //Envio datos tamaño
    @IBAction func confirmTam() {
        
    }

    
    //Relacion UI picker
    @IBOutlet var pickerTamanyo: WKInterfacePicker!
    
    //tamaños
    var tam:[String]=["Chica","Mediana","Grande"]
    
    
    var tamanyo:Tamanyo=Tamanyo(tam: "Chica")
    
    //Accion del picker, guarda dato
    @IBAction func actionPickerTamanyo(_ value: Int) {
        self.tamanyo=Tamanyo(tam: tam[value])


    }

    //mover view
    @IBAction func confirmTamanyo() {

        pushController(withName: "tamanyo", context: self.tamanyo)

    }
    
}
