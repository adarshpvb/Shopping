//
//  ContentView.swift
//  Shopping
//
//  Created by Adarsh Begur on 29/07/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cartManager = CartManager ()
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
         NavigationView{
            ScrollView{
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(ProductList, id: \.id) {product in
                        ProductCard(product: product)
                            .environmentObject(cartManager)
                            
                    }
                }
                .padding()
            }
            .navigationTitle(Text("Smartphones "))
            .toolbar{
                NavigationLink{
                    CartView()
                        .environmentObject(cartManager)
                }label: {
                    CartButton(numberOfProducts: cartManager.products.count)
                }
                
            }
        }
         .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
