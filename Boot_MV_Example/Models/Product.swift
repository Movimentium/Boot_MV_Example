//  Product.swift
//  Boot_MV_Example
//  Created by Miguel Gallego on 18/5/25.
import Foundation

struct Product: Decodable, Identifiable {
    let id: Int
    let title: String
    let price: Double
}
