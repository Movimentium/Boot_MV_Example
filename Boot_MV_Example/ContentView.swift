//  ContentView.swift
//  Boot_MV_Example
//  Created by Miguel Gallego on 18/5/25.
import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var storeModel: StoreModel
    
    var body: some View {
        List(storeModel.products) { product in
            VStack(alignment: .leading) {
                Text(product.title)
                Text(product.price as NSNumber, formatter: NumberFormatter.currency)
                    .foregroundStyle(.blue)
                    .font(.subheadline)
            }
        }
        .task {
            await populateProducts()
        }
    }
    
    // MARK: - Logic
    // I don't like this approach...
    private func populateProducts() async {
        do {
            try await storeModel.populateProducts()
        } catch {
            print(error)
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(StoreModel(webService: WebService()))
}
