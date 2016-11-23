//
//  vistaQuesoInterfaceController.swift
//  PizzaAppleWatch
//
//  Created by Almudena on 18/11/16.
//  Copyright © 2016 Almudena. All rights reserved.
//

import WatchKit
import Foundation


class vistaQuesoInterfaceController: WKInterfaceController {

    var valorPorDefectoQueso:Queso=Queso(q: "Mozzarella")
    
    var envio_datos:Datos=Datos(dato: "")
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        
        //Creacion valores picker
        var quesos:[WKPickerItem]=[]
        
        for i in ques{
            let item = WKPickerItem()
            item.title=i
            quesos.append(item)
        }
        self.pickerQueso.setItems(quesos)
        
        let datos=context as! Datos
        self.envio_datos=datos

        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    //Opciones piker
    var ques:[String]=["Mozzarella","Cheedar","Parmesano","Sin Queso"]
    
    //Relacion picker
    @IBOutlet var pickerQueso: WKInterfacePicker!
    
    //Action para el picker, guarda datos
    @IBAction func actionPickerQueso(_ value: Int) {
        self.valorPorDefectoQueso=Queso(q: ques[value])
    }
    
    //mover view
    
    @IBAction func confirmQueso() {
        self.envio_datos.addDato(d: valorPorDefectoQueso.getQueso())
        pushController(withName: "queso", context: self.envio_datos)
    }
    
}
