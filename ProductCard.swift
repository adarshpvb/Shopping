//
//  ProductCard.swift
//  Shopping
//
//  Created by Adarsh Begur on 29/07/23.
//

import SwiftUI

struct ProductCard: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    var body: some View {
        ZStack (alignment: .topTrailing){
            ZStack(alignment: .bottom){
                Image(product.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 180)
                    .scaledToFit()
                
                VStack(alignment: .leading){
                    Text(product.name)
                        .bold()
                    Text("Rs.\(product.price)/-")
                        .font(.caption)
                }
                .padding()
                .frame(width: 180,alignment: .leading)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
            }
            .frame(width: 180,height: 250)
        .shadow(radius: 3)
            
            Button{
                cartManager.addToCart(product:product)
            
            } label: {
                Image(systemName: "plus")
                    .padding(10)
                    .foregroundColor(.white)
                .background(.gray)
                .cornerRadius(50)
                .padding()
            }
        }
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: ProductList[0])
            .environmentObject(CartManager())
    }
}
