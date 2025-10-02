//
//  Home.swift
//  EasyShop
//
//  Created by Rodrigo Valverde on 9/10/2025.
//

import SwiftUI

struct Home: View {
    
    let categories = ["All", "Men", "Women", "Boys", "Girls"]
    
    @State var selectedCategory = "All"
    @State var selectedProduct: Product? = nil
    
    var body: some View {
        VStack{
            HStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 16)
                        .frame(width: 48, height: 48)
                    Image(systemName: "person.fill")
                        .font(.title)
                        .foregroundStyle(.background)
                }
                
                VStack(alignment: .leading) {
                    Text("Hello Rodrigo")
                        .font(.subheadline)
                    Text("Welcome to EasyShop")
                        .font(.headline)
                    
                }
                Spacer()
                
                RoundedIcon(name: "bell", action: {})
                
                RoundedIcon(name: "bag", action: {})
                
            }.padding(.horizontal)
            
            HStack {
                HStack {
                    Image(systemName: "magnifyingglass")
                        .font(.title2)
                        .foregroundStyle(.secondary)
                    TextField("Search", text: .constant(""))
                }.padding()
                    .background(.ultraThinMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                    .shadow(radius: 4)
                
                
                RoundedIcon(name: "slider.vertical.3", action: {})
            }.padding(.horizontal)
            
            ScrollView(.vertical) {
                
                Banner()
                    
                
                HStack {
                    Text("Categories")
                        .font(.title)
                        .bold()
                    
                    Spacer()
                    Button(action: {}) {
                        Text("See all")
                            .tint(.primary)
                    }
                    
                    
                    
                }.padding()
                
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(categories, id: \.self) {category in
                            CategoryChip(
                                name: category,
                                selected: selectedCategory == category
                            ).onTapGesture {
                                selectedCategory = category
                            }
                        }
                    }.padding(EdgeInsets(top: 0, leading: 16, bottom: 16, trailing: 16))
                }.scrollIndicators(.hidden)
                
                
                
                
                HStack {
                    Text("Products")
                        .font(.title)
                        .bold()
                    
                    Spacer()
                    Button(action: {}) {
                        Text("See all")
                            .tint(.primary)
                    }
                    
                    
                    
                }.padding()
                
                
                LazyVGrid(columns: [
                    GridItem(.flexible()),
                    GridItem(.flexible())
                ]) {
                    ForEach(products, id: \.self.name) { product in
                        ProductCard(product: product)
                            .onTapGesture {
                                selectedProduct = product
                            }
                        
                    }
                }.padding(.horizontal)
            }.scrollIndicators(.hidden)
        }
        .navigationDestination(item: $selectedProduct) { product in
            ProductDetail(product: product)
        }
        .navigationBarBackButtonHidden()
    }
}


#Preview{
    Home()
}
