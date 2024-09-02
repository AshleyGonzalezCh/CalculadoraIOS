//
//  ViewController.swift
//  P2. Enlaces
//
//  Created by alumno on 8/30/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var texto: UILabel!
    @IBOutlet weak var botob_interactuar_blanco: UIButton!
    @IBOutlet weak var boton_interactuar: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Accion_boton(_ sender: Any) {
        texto.text = "Hola"
    }
    
}

