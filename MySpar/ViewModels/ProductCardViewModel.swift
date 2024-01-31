//
//  ProductCardViewModel.swift
//  MySpar
//
//  Created by NOY  on 30.01.2024.
//

import Foundation

class ProductCardViewModel: ObservableObject {
    
    var product: ProductCardModel
    init(product: ProductCardModel) {
        self.product = product
    }
    
    var productName: String {
        return product.name
    }
    
    var productPrice: Int {
        return product.price
    }
    
    var productSale: Int? {
        return product.sale
    }
    
    var productBrand: String {
        return product.brand
    }
    
    var productWeight: Double {
        return product.weight
    }
    
    var productType: String {
        return product.type
    }
    
    var productVolume: Double {
        return product.volume
    }
    
    var productShelfLife: String {
        return product.shelfLife
    }
    
    var productCountry: String {
        return product.country
    }
    
    var productGost: String {
        return product.gost
    }
    
    var productMaxStorageTemperature: Int {
        return product.maxStorageTemperature
    }
    
    var productMinStorageTemperature: Int {
        return product.minStorageTemperature
    }
    
    var productComposition: String {
        return product.composition
    }
    
    var productImage: String {
        return product.image
    }
    
    var productCurrency: String {
        return product.currency
    }
    
    var productUnitOfMeasurement: String {
        return product.unitOfMeasurement
    }
    
    var productAverageReviews: Int {
        return product.averageReviews
    }
    
    var productCountReviews: Int {
        return product.countReviews
    }
}

let SoftToyDragonSparky = ProductCardViewModel(product: ProductCardModel(price: 1790, name: "Мягкая Игрушка Дракончик Спарки", brand: "SPAR", weight: 0.29, type: "Мягкие", volume: 0.29, shelfLife: "не ограничен", country: "Россия", gost: "ГОСТ", maxStorageTemperature: 20, minStorageTemperature: -20, composition: "Текстиль", image: "Sparky", currency: "₽", unitOfMeasurement: "шт", averageReviews: 4, countReviews: 3))
