//
//  NavigationBarView.swift
//  MySpar
//
//  Created by NOY  on 03.02.2024.
//

import SwiftUI

struct NavigationBarView: View {
    
    @State private var selectedButton = 0
    @State private var selectFavorite = false
    
    var body: some View {
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
                Button(action: { shareApp() }, label: {
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
            .frame(maxWidth: .infinity, maxHeight: 30)
        }
    }
}

#Preview {
    NavigationBarView()
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
