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
}
