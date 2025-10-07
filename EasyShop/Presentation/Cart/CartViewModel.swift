//
//  CartViewModel.swift
//  EasyShop
//
//  Created by Rodrigo Valverde on 10/7/2025.
//

import Foundation

class CartViewModel: ObservableObject {
    
    @Published var cartItems: [CartItem] = []
    
    func addCartItem(product: Product, quantity: Int) {
        cartItems.append(CartItem(product: product, quantity: quantity))
    }
}
