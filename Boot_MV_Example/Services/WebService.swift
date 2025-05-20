//  WebService.swift
//  Boot_MV_Example
//  Created by Miguel Gallego on 18/5/25.
import Foundation

let strAPI = "https://fakestoreapi.com/products"

enum NetworkError: Error {
    case badURL
    case badRequest
}

class WebService {
    
    func getProducts() async throws -> [Product] {
        guard let url = URL(string: strAPI) else {
            throw NetworkError.badURL
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            throw NetworkError.badRequest
        }
        
        let products = try JSONDecoder().decode([Product].self, from: data)
        return products
    }
    
}
