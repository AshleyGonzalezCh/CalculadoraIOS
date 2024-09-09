//
//  Botones.swift
//  P2. Enlaces
//
//  Created by alumno on 9/6/24.
//

import Foundation
struct UIBotonesCalculadora{
    var Restorationid: String
    var numero: Character
    var operacion: String
    init(_ RestorationID: String, numero: Character, operacion: String) {
        self.Restorationid = RestorationID
        self.numero = numero
        self.operacion = operacion
    }
    
    static func crear_arreglo() -> Dictionary<String, UIBotonesCalculadora>{
        var botones_interfaz: Dictionary<String, UIBotonesCalculadora> = [:]
        
        
        botones_interfaz["boton_0"] = UIBotonesCalculadora(
                                            "boton_0",
                                            numero: Character("0"),
                                            operacion: "/"
                                            )
        
        botones_interfaz["boton_1"] = UIBotonesCalculadora(
                                            "boton_1",
                                            numero: Character("1"),
                                            operacion: ""
                                            )
        
        botones_interfaz["boton_2"] = UIBotonesCalculadora(
                                            "boton_2",
                                            numero: Character("2"),
                                            operacion: ""
                                            )
    
        
        botones_interfaz["boton_3"] = UIBotonesCalculadora(
                                            "boton_3",
                                            numero: Character("3"),
                                            operacion: "+"
                                            )
        
        botones_interfaz["boton_4"] = UIBotonesCalculadora(
                                            "boton_4",
                                            numero: Character("4"),
                                            operacion: ""
                                            )
        
        botones_interfaz["boton_5"] = UIBotonesCalculadora(
                                            "boton_5",
                                            numero: Character("5"),
                                            operacion: ""
                                            )
        
        botones_interfaz["boton_6"] = UIBotonesCalculadora(
                                            "boton_6",
                                            numero: Character("6"),
                                            operacion: "-"
                                            )
        
        botones_interfaz["boton_7"] = UIBotonesCalculadora(
                                            "boton_7",
                                            numero: Character("7"),
                                            operacion: ""
                                            )
        
        botones_interfaz["boton_8"] = UIBotonesCalculadora(
                                            "boton_8",
                                            numero: Character("8"),
                                            operacion: ""
                                            )
        
        botones_interfaz["boton_9"] = UIBotonesCalculadora(
                                            "boton_9",
                                            numero: Character("9"),
                                            operacion: "*"
                                            )
        
        return botones_interfaz
    }
}
