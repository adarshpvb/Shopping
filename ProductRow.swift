//
//  ProductRow.swift
//  Shopping
//
//  Created by Adarsh Begur on 29/07/23.
//

import SwiftUI

struct ProductRow: View {
    @EnvironmentObject var cartManager: CartManager
    var product : Product
    var body: some View {
        HStack (spacing: 20){
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
                .cornerRadius(10)
            
            VStack(alignment: .leading,spacing: 10 ){
                Text(product.name)
                    .bold()
                Text("Rs.\(product.price)/-")
            }
            Spacer()
            Image(systemName: "trash.fill")
                .foregroundColor(.red)
                .onTapGesture {
                    cartManager.removeFromCart(product: product)
                }
            
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product: ProductList[3])
            .environmentObject(CartManager())
    }
}
