//
//  EasyShopApp.swift
//  EasyShop
//
//  Created by Rodrigo Valverde on 9/10/2025.
//

import SwiftUI

@main
struct EasyShopApp: App {
    @StateObject var cartViewModel = CartViewModel()
    @StateObject var router = AppRouter()
    
    var body: some Scene {
        WindowGroup {
            OnBoarding()
                .environmentObject(cartViewModel)
                .environmentObject(router)
        }
    }
}
