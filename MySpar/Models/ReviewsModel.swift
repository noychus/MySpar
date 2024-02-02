//
//  ReviewsModel.swift
//  MySpar
//
//  Created by NOY  on 01.02.2024.
//

import Foundation

class ReviewsModel: Identifiable {
    
    var id = UUID()
    @Published var name: String
    @Published var rating: Int
    var date: Date = Date()
    @Published var reviewText: String
    
    init(id: UUID = UUID(), name: String, rating: Int, date: Date, reviewText: String) {
        self.id = id
        self.name = name
        self.rating = rating
        self.date = date
        self.reviewText = reviewText
    }
}
