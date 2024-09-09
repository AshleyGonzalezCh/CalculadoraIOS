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
    var botones_interfaz: Array<UIBotonesCalculadora> = []
    
    
    var InputActual: Double = 0
    var InputAnterior: Double = 0
    var Operador: String = ""
    var OpSeleccionada : Bool = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    
    /*func iniciar_calculadora() -> Void {
        crear_arreglo()
    }
    
    func crear_arreglo() -> Void{
        botones_interfaz = UIBotonesCalculadora.crear_arreglo();
        
    }*/
    
    /*@IBAction func AccionAlPicarBtn (_ sender: UIButton){
        let textoAñadir = botones_interfaz[(sender.restorationIdentifier ?? BtnOperacion.restorarinIdentifier) ?? "Boton"]?.numero
        textoAñadir.text = "\(Etiqueta.text)\(textoAñadir))"

    }*/
    
   /*
    CODIGO VIEJO
    
    @IBAction func Boton_Presionado(_ sender: UIButton) {
        var numero = sender.titleLabel?.text ?? ""
        if OpSeleccionada{
            Etiqueta.text = numero
            OpSeleccionada = false
        }
        else {
            Etiqueta.text = Etiqueta.text! + numero
        }
        InputActual = Double(Etiqueta.text ?? "0.0") ?? 0.0
    }*/
    
    @IBAction func botonPresionado(_ sender: UIButton) {
        let numero = sender.titleLabel?.text ?? ""
        
        if OpSeleccionada {
            Etiqueta.text = numero
            OpSeleccionada = false
        } else {
            // Usa una cadena vacía en lugar de usar `!`
            Etiqueta.text = (Etiqueta.text ?? "") + numero
        }
        
        // Verifica que Etiqueta.text no sea nil
        if let texto = Etiqueta.text, let numero = Double(texto) {
            InputActual = numero
        } else {
            // Manejar el caso en que el texto no se puede convertir a Double
            InputActual = 0.0
        }
    }
    
    @IBAction func OpSel (_ sender: UIButton){
        
        if OpSeleccionada {
                Resultado()
            }
            
            Operador = sender.currentTitle ?? ""
            InputAnterior = InputActual
            OpSeleccionada = true
    }
    
    
    @IBAction func Limpiar(_ sender: Any) {
        InputActual = 0
        InputAnterior = 0
        Operador = ""
        OpSeleccionada = false
        Etiqueta.text = "0"
        
    }
    
    @IBAction func Resultado(_ sender: UIButton) {
        switch Operador {
                case "+":
                    InputActual = InputAnterior + InputActual
                case "-":
                    InputActual = InputAnterior - InputActual
                case "*":
                    InputActual = InputAnterior * InputActual
                case "/":
                    //Evita la división por cero
                    InputActual = InputAnterior / (InputActual == 0 ? 1 : InputActual)
                default:
                    break
                }
                
                // Actualiza la etiqueta con el resultado
                Etiqueta.text = String(InputActual)
            }
    
}

