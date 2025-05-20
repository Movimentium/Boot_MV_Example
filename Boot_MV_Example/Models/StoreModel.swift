//  StoreModel.swift
//  Boot_MV_Example
//  Created by Miguel Gallego on 18/5/25.
import Foundation

class StoreModel: ObservableObject {
    @Published var products: [Product] = []
    
    
    func populateProducts() async {
        
    }
}
