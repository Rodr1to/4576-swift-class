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
        if let index = cartItems.firstIndex(where: {$0.product.name == product.name}){
            cartItems[index].quantity += quantity
        } else {
            cartItems.append(CartItem(product: product, quantity: quantity))
        }
        
        
    }
    
    func removeCartItem(product: Product) {
        if let index = cartItems.firstIndex(where: {$0.product.name == product.name}){
            cartItems.remove(at: index)
        }
    }
}
