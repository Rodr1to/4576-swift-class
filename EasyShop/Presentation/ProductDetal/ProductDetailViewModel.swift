//
//  ProductDetailViewModel.swift
//  EasyShop
//
//  Created by Rodrigo Valverde on 9/17/2025.
//

import Foundation

class ProductDetailViewModel: ObservableObject {
    
    @Published private(set) var quantity = 1
    
    func decreaseQuantity() {
        guard quantity > 1 else { return }
        quantity -= 1
        
    }
     
    func increaseQuantity() {
        quantity += 1
    }
    
    
    
}



