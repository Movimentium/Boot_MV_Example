//  StoreModel.swift
//  Boot_MV_Example
//  Created by Miguel Gallego on 18/5/25.
import Foundation

@MainActor
class StoreModel: ObservableObject {
    @Published var products: [Product] = []
    let webService: WebService
    
    init(webService: WebService) {
        self.webService = webService
    }
    
    func populateProducts() async throws {
        products = try await webService.getProducts()
    }
}
