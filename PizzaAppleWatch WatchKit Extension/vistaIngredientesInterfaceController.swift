//
//  vistaIngredientesInterfaceController.swift
//  PizzaAppleWatch
//
//  Created by Almudena on 18/11/16.
//  Copyright © 2016 Almudena. All rights reserved.
//

import WatchKit
import Foundation


class vistaIngredientesInterfaceController: WKInterfaceController {

    var envio_datos:Datos=Datos(dato: "")
    
    //Diccionario para saber que ingredientes se escogen
    var diccIngre:[String:Bool]=["Jamón":false,"Pepperoni":false,"Pavo":false,"Salchicha":false,"Aceituna":false,"Cebolla":false,"Pimiento":false,"Piña":false,"Anchoa":false]
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        
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

    //Relacion UI ingredientes
    @IBOutlet var jamon: WKInterfaceSwitch!
    @IBOutlet var pepperoni: WKInterfaceSwitch!
    @IBOutlet var pavo: WKInterfaceSwitch!
    @IBOutlet var salchicha: WKInterfaceSwitch!
    @IBOutlet var aceituna: WKInterfaceSwitch!
    @IBOutlet var cebolla: WKInterfaceSwitch!
    @IBOutlet var pimiento: WKInterfaceSwitch!
    @IBOutlet var pinya: WKInterfaceSwitch!
    @IBOutlet var anchoa: WKInterfaceSwitch!
    
    
    //Acciones para el switch
    @IBAction func actionJamon(_ value: Bool) {
        if value==false{
            diccIngre["Jamón"]=false
           // print("Jamón FALSE")
        }else{
            diccIngre["Jamón"]=true
           // print("Jamón TRUE")
        }
            
    }
    @IBAction func actionPepperoni(_ value: Bool) {
        if value==false{
            diccIngre["Pepperoni"]=false
            //print("Pepperoni FALSE")
        }else{
            diccIngre["Pepperoni"]=true
           // print("Pepperoni TRUE")
        }
    }
    @IBAction func actionPavo(_ value: Bool) {
        if value==false{
            diccIngre["Pavo"]=false
           // print("Pavo FALSE")
        }else{
            diccIngre["Pavo"]=true
           // print("Pavo TRUE")
        }
    }
    @IBAction func actionSalchicha(_ value: Bool) {
        if value==false{
            diccIngre["Salchicha"]=false
           // print("Salchicha FALSE")
        }else{
            diccIngre["Salchicha"]=true
            //print("Salchicha TRUE")
        }
    }

    @IBAction func actionAceituna(_ value: Bool) {
        if value==false{
            diccIngre["Aceituna"]=false
           // print("Aceituna FALSE")
        }else{
            diccIngre["Aceituna"]=true
           // print("Aceituna TRUE")
        }
    }
    
    @IBAction func actionCebolla(_ value: Bool) {
        if value==false{
            diccIngre["Cebolla"]=false
           // print("Cebolla FALSE")
        }else{
            diccIngre["Cebolla"]=true
           // print("Cebolla TRUE")
        }
    }
    
    @IBAction func actionPimiento(_ value: Bool) {
        if value==false{
            diccIngre["Pimiento"]=false
            //print("Pimiento FALSE")
        }else{
            diccIngre["Pimiento"]=true
           // print("Pimiento TRUE")
        }
    }
    
    @IBAction func actionPinya(_ value: Bool) {
        if value==false{
            diccIngre["Piña"]=false
           // print("Piña FALSE")
        }else{
            diccIngre["Piña"]=true
           // print("Piña TRUE")
        }
    }
    @IBAction func actionAnchoa(_ value: Bool) {
        if value==false{
            diccIngre["Anchoa"]=false
           // print("Anchoa FALSE")
        }else{
            diccIngre["Anchoa"]=true
           // print("Anchoa TRUE")
        }
    }
    func contarIngre(diccIngre:[String:Bool])->Int{
        var dicc:[String:Bool] = diccIngre
        var contar:Int = 0
        for i in dicc{
            if(dicc[i.key] == true){
                contar+=1
            }
        }
        return contar
    }
    
    var ingreSeleccionados:Int=0

    
    //mover view y confirmar ingredientes
    @IBAction func confirmIngre() {
        ingreSeleccionados = contarIngre(diccIngre: diccIngre)
        if ingreSeleccionados == 0{
            self.presentAlert(withTitle: "Error", message: "Selecciona Mínimo 1 ingrediente", preferredStyle: WKAlertControllerStyle.alert, actions: [botonOk])
        }else if ingreSeleccionados>5{
            self.presentAlert(withTitle: "Error", message: "Sólo puedes seleccionar 5 ingredientes", preferredStyle: WKAlertControllerStyle.alert, actions: [botonOk])
        }else{
            self.envio_datos.addPos1(ingre: String(ingreSeleccionados))
            pushController(withName: "confirmacion", context: self.envio_datos)

        }
    }

    func salir(){
        pushController(withName: "principio", context: nil)
    }
    
    //Configuracion Alertas
    
    //boton alerta OK
    let botonOk = WKAlertAction(title: "Aceptar", style: WKAlertActionStyle.default) { ()}
   


}
    
    
    
    
    

