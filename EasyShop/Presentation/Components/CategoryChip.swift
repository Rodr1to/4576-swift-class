//
//  CategoryChip.swift
//  EasyShop
//
//  Created by Rodrigo Valverde on 9/17/2025.
//

import SwiftUI

struct CategoryChip: View {
    
    let name: String
    let selected: Bool
    var body: some View {
        Text(name)
            .foregroundStyle(selected ? .white : .black)
            .padding(EdgeInsets(top: 16, leading: 32, bottom: 16, trailing: 32))
            .background(selected ? .black : .gray.opacity(0.15), in:
                            RoundedRectangle(cornerRadius: 16))
    }
    
}

