//
//  MainTestView.swift
//  MySpar
//
//  Created by NOY  on 02.02.2024.
//

import SwiftUI

struct MainTestView: View {
    
    @State private var selectedButton = 0
    @State private var selectFavorite = false
    
    var body: some View {
        VStack {
            VStack (spacing: 0) {
                NavigationBarView()
            }
            .padding(.top, 16)
            
            ZStack {
                ZStack (alignment: .bottom) {
                    TabView (selection: $selectedButton) {
                        ProductCardView(vm: SoftToyDragonSparky)
                            .tag(0)
                        Text("Каталог")
                            .tag(1)
                        Text("Корзина")
                            .tag(2)
                        Text("Профиль")
                            .tag(3)
                    }
                    
                    HStack (spacing: 32) {
                        Button(action: { self.selectedButton = 0}, label: {
                            VStack {
                                Image(selectedButton == 0 ? "SparIconGreen" : "SparIconGray")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 24, height: 24)
                                Text("Главная")
                                    .font(.system(size: 12, weight: .regular, design: .default))
                                    .foregroundColor(selectedButton == 0 ? Color.SparGreen : Color.SparGray)
                            }
                            .frame(width: 60, height: 50)
                        })
                        
                        Button(action: {self.selectedButton = 1}, label: {
                            VStack {
                                Image(selectedButton == 1 ? "MenuIconGreen" : "MenuIconGray")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 24, height: 24)
                                Text("Каталог")
                                    .font(.system(size: 12, weight: .regular, design: .default))
                                    .foregroundColor(selectedButton == 1 ? Color.SparGreen : Color.SparGray)
                            }
                            .frame(width: 60, height: 50)
                        })
                        
                        Button(action: {self.selectedButton = 2}, label: {
                            VStack {
                                Image(selectedButton == 2 ? "BasketIconGreen" : "BasketIconGray")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 24, height: 24)
                                Text("Корзина")
                                    .font(.system(size: 12, weight: .regular, design: .default))
                                    .foregroundColor(selectedButton == 2 ? Color.SparGreen : Color.SparGray)
                            }
                            .frame(width: 60, height: 50)
                        })
                        
                        
                        Button(action: {self.selectedButton = 3}, label: {
                            VStack {
                                Image(selectedButton == 3 ? "ProfileIconGreen" : "ProfileIconGray")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 24, height: 24)
                                Text("Профиль")
                                    .font(.system(size: 12, weight: .regular, design: .default))
                                    .foregroundColor(selectedButton == 3 ? Color.SparGreen : Color.SparGray)
                            }
                            .frame(width: 60, height: 50)
                        })
                    }
                    
                    .frame(maxWidth: .infinity, maxHeight: 45)
                    
                    
                }
            }
        }
    }
}

#Preview {
    MainTestView()
}
