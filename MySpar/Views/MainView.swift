//
//  MainView.swift
//  MySpar
//
//  Created by NOY  on 30.01.2024.
//

import SwiftUI

struct MainView: View {
    
    @State private var selectedButton = 0
    @State private var selectFavorite = false
    
    var body: some View {
        ZStack {
            VStack {
                HStack (spacing: 24) {
                    Button(action: {}, label: {
                        Image("ArrowLeftGreen")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 24, height: 24)
                    })
                    .padding(.horizontal)
                    
                    Spacer()
                    
                    Button(action: {}, label: {
                        Image("InvoiceIconGreen")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 24, height: 24)
                    })
                    //MARK: Доделать, чтобы можно было поделиться через приложение
                    Button(action: {
                        shareApp()
                    }, label: {
                        Image("ShareIconGreen")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 24, height: 24)
                    })
                    
                    Button(action: {
                        self.selectFavorite.toggle()
                    }, label: {
                        Image(self.selectFavorite ? "FavoriteIconGreenFill" : "FavoriteIconGreen")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 24, height: 24)
                    })
                    .padding(.trailing)
                    
                }
                .frame(maxWidth: .infinity, maxHeight: 40)
                .background(Color.white)
            
                ProductCardView(vm: SoftToyDragonSparky)
                
                
                //MARK: BAR
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
                .frame(maxWidth: .infinity, minHeight: 40)
                .background(Color.white)
            }
        }
    }
}

#Preview {
    MainView()
}


func shareApp() {
    
        let appName = "My SPAR"
        guard let window = UIApplication.shared.windows.first(where: { $0.isKeyWindow }) else {
            return
        }

        guard let appURL = URL(string: "https://www.myspar.ru") else { return }
        
        let activityViewController = UIActivityViewController(activityItems: [appName, appURL], applicationActivities: nil)

        window.rootViewController?.present(activityViewController, animated: true, completion: nil)
}
