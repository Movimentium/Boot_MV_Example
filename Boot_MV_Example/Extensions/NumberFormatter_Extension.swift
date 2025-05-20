//  NumberFormatter_Extension.swift
//  Boot_MV_Example
//  Created by Miguel Gallego on 20/5/25.
import Foundation

extension NumberFormatter {
    // REVISAR: no me gusta. Se crean muchos NumberFormatter
    static var currency: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        // print("Se ha creado un NumberFormatter()")
        return formatter
    }
    
}
