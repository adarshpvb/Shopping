//
//  CartView.swift
//  Shopping
//
//  Created by Adarsh Begur on 29/07/23.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        ScrollView{
            if cartManager.products.count > 0{
                ForEach(cartManager.products, id:\.id) {product in
                    ProductRow(product: product)
                    
                }
                HStack{
                    Text("Your cart total is")
                    Spacer()
                    Text("Rs.\(cartManager.total).00")
                        .bold()
                    
                }
                .padding()
                PaymentButton(action: {})
                    .padding()
            }else {
                Text("Your cart is empty")
            }
            
        }
        .navigationTitle(Text("My Cart"))
        .padding(.top)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
