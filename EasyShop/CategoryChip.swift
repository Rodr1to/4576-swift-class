//
//  CategoryChip.swift
//  EasyShop
//
//  Created by Rodrigo Valverde on 9/17/2025.
//

import SwiftUI

struct CategoryChip: View {
    
    let name: String
    var body: some View {
        Text(name)
            .padding(EdgeInsets(top: 16, leading: 32, bottom: 16, trailing: 32))
            .background(.ultraThinMaterial, in:
                            RoundedRectangle(cornerRadius: 16))
    }
    
}

