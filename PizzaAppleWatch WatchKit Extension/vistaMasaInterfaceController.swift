//
//  vistaMasaInterfaceController.swift
//  PizzaAppleWatch
//
//  Created by Almudena on 18/11/16.
//  Copyright © 2016 Almudena. All rights reserved.
//

import WatchKit
import Foundation


class vistaMasaInterfaceController: WKInterfaceController {



    var enviar_datos:Datos=Datos(dato: "")
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        //Creacion opciones picker
        var mas:[WKPickerItem]=[]
        
        for i in masas{
            let item = WKPickerItem()
            item.title=i
            mas.append(item)
        }
        self.pickerMasa.setItems(mas)

        let tamanyo=context as! Tamanyo
        let tam:String=tamanyo.getTamanyo()
        self.enviar_datos.addDato(d: tam)


        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    //Opciones del picker
    var masas:[String]=["Delgada","Crujiente","Gruesa"]
    
    //Relacion UI picker
    @IBOutlet var pickerMasa: WKInterfacePicker!
   
    var valorPorDefectoMasa:Masa=Masa(m: "Delgada")
    //Action UI picker, guarda datos
    @IBAction func actionPickerMasa(_ value: Int) {
        self.valorPorDefectoMasa=Masa(m: masas[value])

    }
    
    
    //mover view
    @IBAction func confirmMasa() {
        self.enviar_datos.addDato(d: valorPorDefectoMasa.getMasa())
        pushController(withName: "masa", context: self.enviar_datos)
    }
    
    
}
