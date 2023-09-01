//
//  CartPage.swift
//  CoffeeMasters
//
//  Created by Petr Chalupa on 01.09.2023.
//

import SwiftUI

struct OrderPage: View {
    // Inject the singleton to the page
    @EnvironmentObject var cartManager: CartManager;
    
    @State var name = "";
    @State var phone = "";
    @State var orderConfirmed = false;
    
    
    var body: some View {
        NavigationView {
                    if cartManager.cart.count == 0 {
                        Text("Your order is empty")
                            .navigationTitle("Your Order")
                    } else {
                        List {
                            Section("ITEMS") {
                                ForEach(cartManager.cart, id:\.0.id) { item in
                                    OrderItem(item: item)
                                }
                            }.listRowBackground(Color("SurfaceBackground"))
                                                
                            Section("YOUR DETAILS") {
                                VStack {
                                    TextField("Your Name", text: $name)
                                        .textFieldStyle(.roundedBorder)
                                    Spacer().frame(height: 20)
                                    TextField("Your Phone #", text: $phone)
                                        .keyboardType(.phonePad)
                                        .textFieldStyle(.roundedBorder)
                                }.padding(.top)
                                 .padding(.bottom)
                            }.listRowBackground(Color("SurfaceBackground"))
                            
                            Section() {
                                HStack {
                                    Spacer()
                                    Text("Total")
                                    Spacer()
                                    Text("$ \(cartManager.total(), specifier: "%.2f")").bold()
                                }
                            }.listRowBackground(Color.clear)
                            
                            Section {
                                HStack {
                                    Spacer()
                                    Button("Place Order") {
                                        //TODO: Validation
                                        orderConfirmed = true
                                    }
                                        .padding()
                                        .frame(width: 250.0)
                                        .background(Color("Alternative2"))
                                        .foregroundColor(Color.black)
                                        .cornerRadius(25)
                                        
                                    Spacer()
                                }
                            }.listRowBackground(Color.clear)
                        }
                        .listSectionSeparatorTint(Color("AccentColor"))
                        .listStyle(.insetGrouped)
                        .navigationTitle("Your Order")
                    }
                }
    }
}

struct CartPage_Previews: PreviewProvider {
    static var previews: some View {
        OrderPage()
            .environmentObject(CartManager())
    }
}
