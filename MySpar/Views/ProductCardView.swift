//
//  ProductCardView.swift
//  MySpar
//
//  Created by NOY  on 30.01.2024.
//

import SwiftUI

struct ProductCardView: View {
    
    @ObservedObject var vm: ProductCardViewModel
    
    @State private var showAllCharacteristics: Bool = false
    
    var body: some View {
        ScrollView (showsIndicators: false) {
            VStack {
                
                //MARK: Изображение продукта
                Image(vm.productImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                
                //MARK: Оценка по отзывам (Надо переделать)
                HStack {
                    Image("StarIconYellow")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20, height: 20)
                    Image("StarIconYellow")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20, height: 20)
                    Image("StarIconYellow")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20, height: 20)
                    Image("StarIconYellow")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20, height: 20)
                    Image("SparIconLightGray")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20, height: 20)
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("\(vm.productCountReviews) отзыв")
                            .padding(.horizontal)
                            .foregroundColor(Color.gray)
                    })
                    
                    Spacer()
                    
                }
                .padding(.horizontal, 24)
                .padding(.bottom, 8)
                
                
                //MARK: Название Продукта
                HStack {
                    Text(vm.productName)
                        .font(.system(size: 26, weight: .semibold, design: .default))

                    Spacer()
                }
                .padding(.horizontal, 24)
                
                //MARK: Цена Продукта и единица измерения
                HStack (spacing: 0) {
                    Text("\(formatNumber(vm.productPrice))")
                        .font(.system(size: 36, weight: .bold, design: .default))
                    Text("⁰⁰")
                        .font(.system(size: 36, weight: .regular, design: .default))
                    Text("\(vm.productCurrency)")
                        .font(.system(size: 36, weight: .semibold, design: .default))
                    
                    Spacer()
                    
                    Text("\(vm.productUnitOfMeasurement)")
                        .font(.system(size: 22, weight: .regular, design: .default))
                        .foregroundColor(Color.gray)
                }
                .padding(.horizontal, 24)
                .padding(.top, 8)
                
                //MARK: Описание Продукта
                VStack (spacing: 10) {
                    HStack {
                        Text("Описание")
                            .font(.system(size: 20, weight: .bold, design: .default))
                        
                        Spacer()
                    }
                    .padding(.horizontal, 24)
                    .padding(.top, 8)
                    
                    Text("Добро пожаловать в мир волшебства и фантазии с нашим очаровательным дракончиком \"Спарки\"! Этот маленький друг принесет радость и веселье в жизнь вашего ребенка, стимулируя их воображение и творческое мышление.")
                        .frame(maxWidth: .infinity)
                        .padding(.horizontal, 24)
                        .padding(.bottom)
                }
                
                //MARK: Характеристики Продукта
                VStack {
                    HStack {
                        Text("Основные характеристики")
                            .font(.system(size: 20, weight: .bold, design: .default))
                        
                        Spacer()
                    }
                    
                    
                    Spacer()
                    
                    HStack {
                        Text("Бренд")
                        
                        Spacer()
                        
                        Text(vm.productBrand)
                    }
                    
                    Spacer()
                    
                    HStack {
                        Text("Вес нетто")
                        
                        Spacer()
                        
                        Text(String(format: "%.2f", vm.productWeight))
                    }
                    
                    Spacer()
                    
                    HStack {
                        Text("Вид продукта")
                        
                        Spacer()
                        
                        Text(vm.productType)
                    }
                    
                    Spacer()
                    
                    HStack {
                        Text("Объем")
                        
                        Spacer()
                        
                        Text(String(format: "%.2f", vm.productVolume))
                    }
                    
                    Spacer()
                    
                    HStack {
                        Text("Cрок хранения")
                        
                        Spacer()
                        
                        Text(vm.productShelfLife)
                    }
                }
                .padding(.horizontal, 24)
                
                if showAllCharacteristics {
                    VStack {
                        Spacer()
                        
                        HStack {
                            Text("Страна")
                            
                            Spacer()
                            
                            Text(vm.productCountry)
                        }
                        
                        Spacer()
                        
                        HStack {
                            Text("ТУ/ГОСТ")
                            
                            Spacer()
                            
                            Text(vm.productGost)
                        }
                        
                        Spacer()
                        
                        HStack {
                            Text("Температура хранения, макс °C")
                            
                            Spacer()
                            
                            Text("\(vm.productMaxStorageTemperature)")
                        }
                        
                        Spacer()
                        
                        HStack {
                            Text("Температура хранения, макс °C")
                            
                            Spacer()
                            
                            Text("\(vm.productMinStorageTemperature)")
                        }
                        
                        Spacer()
                        
                        HStack {
                            Text("Состав")
                            
                            Spacer()
                            
                            Text(vm.productComposition)
                        }
                    }
                    .padding(.horizontal, 24)
                }
                
                Button (action: {
                    self.showAllCharacteristics.toggle()
                }, label: { HStack {
                    Text(self.showAllCharacteristics ? "Скрыть характеристики" : "Все характеристики")
                        .font(.system(size: 20, weight: .semibold, design: .default))
                        .foregroundColor(Color.SparGreen)
                    Spacer()
                }
                .padding(.vertical)
                .padding(.leading, 24)
                })
                
                //MARK: Отзывы
                HStack {
                    Text("Отзывы")
                        .font(.system(size: 18, weight: .semibold, design: .default))
                    
                    Spacer()
                    
                    Button(action: {}, label: {
                        Text("Все \(vm.productCountReviews)")
                            .font(.system(size: 16, weight: .semibold, design: .default))
                            .foregroundColor(Color.SparGreen)
                    })
                }
                .padding(.leading, 24)
                .padding(.trailing, 24)
                
                ScrollView (.horizontal, showsIndicators: false) {
                    HStack (spacing: 16) {
                        Spacer().frame(width: 8)
                        
                        HStack {
                            
                        }
                        .frame(width: 200, height: 120, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(20)
                        
                        HStack {
                            
                        }
                        .frame(width: 200, height: 120, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(20)
                        
                        HStack {
                            
                        }
                        .frame(width: 200, height: 120, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(20)
                        
                        Spacer().frame(width: 8)
                    }
                    
                }
                .shadow(color: .black.opacity(0.05), radius: 5)
                .padding(.bottom, 24)
                
                Button(action: {}, label: {
                    HStack {
                        HStack {
                            Text("Оставить отзыв")
                                .font(.system(size: 18, weight: .semibold, design: .default))
                                .foregroundColor(Color.SparGreen)
                        }
                        .frame(maxWidth: 335, minHeight: 35)
                        .background(Color.white)
                        .cornerRadius(30)
                    }
                    .frame(maxWidth: 340, minHeight: 40)
                    .background(Color.SparGreen)
                    .cornerRadius(30)
                })
            }
        }
    }
}

#Preview {
    ProductCardView(vm: SoftToyDragonSparky)
}


func formatNumber(_ number: Int) -> String {
    let numberFormatter = NumberFormatter()
    numberFormatter.numberStyle = .none
    return numberFormatter.string(from: NSNumber(value: number)) ?? ""
}
