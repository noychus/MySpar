//
//  ProductCardModel.swift
//  MySpar
//
//  Created by NOY  on 30.01.2024.
//

import Foundation

class ProductCardModel {
    
    var price: Int
    var name: String
    var sale: Int?
    var brand: String
    var weight: Double
    var type: String
    var volume: Double
    var shelfLife: String
    var country: String
    var gost: String
    var maxStorageTemperature: Int
    var minStorageTemperature: Int
    var composition: String
    var image: String
    var currency: String
    var unitOfMeasurement: String
    var averageReviews: Int
    var countReviews: Int
    
    
    init(price: Int, name: String, sale: Int? = nil, brand: String, weight: Double, type: String, volume: Double, shelfLife: String, country: String, gost: String, maxStorageTemperature: Int, minStorageTemperature: Int, composition: String, image: String, currency: String, unitOfMeasurement: String, averageReviews: Int, countReviews: Int) {
        self.price = price
        self.name = name
        self.sale = sale
        self.brand = brand
        self.weight = weight
        self.type = type
        self.volume = volume
        self.shelfLife = shelfLife
        self.country = country
        self.gost = gost
        self.maxStorageTemperature = maxStorageTemperature
        self.minStorageTemperature = minStorageTemperature
        self.composition = composition
        self.image = image
        self.currency = currency
        self.unitOfMeasurement = unitOfMeasurement
        self.averageReviews = averageReviews
        self.countReviews = countReviews
    }
}
