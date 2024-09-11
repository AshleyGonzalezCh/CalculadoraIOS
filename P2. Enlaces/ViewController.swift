//
//  ViewController.swift
//  P2. Enlaces
//
//  Created by alumno on 8/30/24.
//

import UIKit

enum estados_de_la_calculadora{
    case seleccionar_numeros
    case escoger_operacion
    case mostrar_resultado
}


class ViewController: UIViewController {
    //ESTADOS DE LA CALCULADORA
    var estado_actual : estados_de_la_calculadora = estados_de_la_calculadora.seleccionar_numeros
    
    //ESPACIO PARA DECLARAR BOTONES O ELEMENTOS VISUALES
    @IBOutlet weak var Div: UIButton!
    @IBOutlet weak var Mult: UIButton!
    @IBOutlet weak var Suma: UIButton!
    @IBOutlet weak var Resta: UIButton!
    @IBOutlet weak var Etiqueta: UILabel!
    //ESPACIO PARA DECLARAR VARIABLES
    var botones_interfaz: Array<UIBotonesCalculadora> = []
    
    
    var InputActual: Double = 0
    var InputAnterior: Double = 0
    var Operador: String = ""
    var OpSeleccionada : Bool = false
    
    
    //VARIABLES DE LA CLASE
    var operacionActual: String? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Suma.setTitle("+", for: .normal)
        Resta.setTitle("-", for: .normal)
        Mult.setTitle("*", for: .normal)
        Div.setTitle("/", for: .normal)
        
    }
    
    
    /*
     func iniciar_calculadora() -> Void {
        crear_arreglo()
    }
    
    func crear_arreglo() -> Void{
        botones_interfaz = UIBotonesCalculadora.crear_arreglo();
        
    }
    
    @IBAction func AccionAlPicarBtn (_ sender: UIButton){
        if(estado_actual == estados_de_la_calculadora.seleccionar_numeros){
            let textoAñadir = botones_interfaz[(sender.restorationIdentifier ??
                                                boton_operacion.restorationIdentifier) ?? "boton"]?.numero
            textoAñadir.text = "\(textoAñadir.text ?? "")\(textoAñadir!)"
        }
        
        else if (estado_actual == estados_de_la_calculadora.escoger_operacion){
            if let _mensajero: UIButton? = sender {
                operacionActual = botones_interfaz[_mensajero!.restorationIdentifier]
            }
        }

    }

    @IBAction func btn_operacion_pulsado(_ sendes: UIButton){
        if (estado_actual == estados_de_la_calculadora.seleccionar_numeros){
            estado_actual.estados_de_la_calculadora.escoger_operacion()
            mostrar_numOp()
        }
    }
    
    func mostrar_numOp(){
        if(estado_actual == estados_de_la_calculadora.escoger_operacion){
            
        }
        
        else if(estado_actual == estados_de_la_calculadora.seleccionar_numeros){
            
        }
    }
     
     */
    
    
    
   /* MI CODIGO VIEJO
    
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
            Etiqueta.text = "" 
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
        if let btnOp = sender.currentTitle{
            Operador = btnOp
            InputAnterior = InputActual
            OpSeleccionada = true
            print("Operador", Operador)
        }
        
        else {print("No operador")}
            //Operador = sender.currentTitle ?? ""
            
        
    }
    
    
    @IBAction func Limpiar(_ sender: Any) {
        InputActual = 0
        InputAnterior = 0
        Operador = ""
        OpSeleccionada = false
        Etiqueta.text = ""
        
    }
    
    @IBAction func BotonResulSel (_ sender: UIButton){
        Resultado();
    }
    
    
   func Resultado() {
       print("RESULTADO")
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

