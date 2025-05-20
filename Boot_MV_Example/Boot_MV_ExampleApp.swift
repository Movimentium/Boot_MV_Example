//  Boot_MV_ExampleApp.swift
//  Boot_MV_Example
//  Created by Miguel Gallego on 18/5/25.
import SwiftUI

@main
struct Boot_MV_ExampleApp: App {
    
    @StateObject private var storeModel = StoreModel(webService: WebService())
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(storeModel)
        }
    }
}
