//
//  Banner.swift
//  EasyShop
//
//  Created by Rodrigo Valverde on 10/1/2025.
//

import SwiftUI

struct Banner: View {
    var body: some View {
        
        HStack {
            VStack {
                Text("Get your special sale today!")
                    .font(.title)
                    .bold()
                
                Button(action: {}) {
                    Text("Shop now")
                        .tint(.white)
                        .padding()
                        .background(.black)
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                    
                }
            }
            
            Image("banner")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 192)
            
        }
        .frame(maxWidth: .infinity)
        .background(.ultraThinMaterial, in :
                        RoundedRectangle(cornerRadius: 16))
        .padding(.horizontal)
        
    }
}
