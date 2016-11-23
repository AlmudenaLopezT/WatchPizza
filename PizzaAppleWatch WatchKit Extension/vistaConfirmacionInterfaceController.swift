//
//  vistaConfirmacionInterfaceController.swift
//  PizzaAppleWatch
//
//  Created by Almudena on 18/11/16.
//  Copyright © 2016 Almudena. All rights reserved.
//

import WatchKit
import Foundation


class vistaConfirmacionInterfaceController: WKInterfaceController {

    var datosRecibido:[String]=[""]
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        let datos=context as! Datos
        self.datosRecibido=datos.getDatos()
        self.datosRecibido.remove(at: 0)

        outletTamanyo.setText(datosRecibido[1])
        outletMasa.setText(datosRecibido[2])
        outletQueso.setText(datosRecibido[3])
        outletIngre.setText(datosRecibido[0])
        


    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }



    @IBOutlet var outletTamanyo: WKInterfaceLabel!

    @IBOutlet var outletMasa: WKInterfaceLabel!

    @IBOutlet var outletQueso: WKInterfaceLabel!
    
    @IBOutlet var outletIngre: WKInterfaceLabel!
    
    @IBAction func actionOidoCocina() {
        self.presentAlert(withTitle: "Oido Cocina", message: "Tu pizza va hacía el horno", preferredStyle: WKAlertControllerStyle.alert, actions: [botonOk])
        

    }
    
     let botonOk = WKAlertAction(title: "Aceptar", style: WKAlertActionStyle.default) {()
    WKInterfaceController.reloadRootControllers(withNames: ["principio"], contexts: nil)
    
    }
    
}
