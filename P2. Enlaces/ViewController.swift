//
//  ViewController.swift
//  P2. Enlaces
//
//  Created by alumno on 8/30/24.
//

import UIKit

class ViewController: UIViewController {
    //ESPACIO PARA DECLARAR BOTONES O ELEMENTOS VISUALES
    @IBOutlet weak var Etiqueta: UILabel!
    //ESPACIO PARA DECLARAR VARIABLES
    var InputActual: Double = 0
    var InputAnterior: Double = 0
    var Operador: String = ""
    var OpSeleccionada : Bool = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Boton_Presionado(_ sender: UIButton) {
        let numero = sender.currentTitle!
        if OpSeleccionada{
            Etiqueta.text = numero
            OpSeleccionada = false
        }
        else {
            Etiqueta.text = Etiqueta.text! + numero
        }
        InputActual = Double(Etiqueta.text!)!
    }
    
    @IBAction func OpSel (_ sender: UIButton){
        Operador = sender.currentTitle!
        InputAnterior = InputActual
        OpSeleccionada = true
    }
    
    
    @IBAction func Limpiar(_ sender: Any) {
        InputActual = 0;
        InputAnterior = 0;
        Operador = "";
        
    }
    
    @IBAction func Resultado(_ sender: UIButton) {
        if Operador == "+"{
            Etiqueta.text = String(InputAnterior+InputActual)
        }
        else if Operador == "-"{
                Etiqueta.text = String(InputAnterior-InputActual)
        }
        
        else if Operador == "*"{
                Etiqueta.text = String(InputAnterior*InputActual)
        }
        else if Operador == "/"{
                Etiqueta.text = String(InputAnterior/InputActual)
        }
    }
    
}

