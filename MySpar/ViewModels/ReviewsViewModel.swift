//
//  ReviewsViewModel.swift
//  MySpar
//
//  Created by NOY  on 01.02.2024.
//

import Foundation

class ReviewsViewModel: ObservableObject {
    var review: ReviewsModel
    
    init(review: ReviewsModel) {
        self.review = review
    }
    
    var reviewID: UUID {
        return review.id
    }
    
    var reviewName: String {
        return review.name
    }
    
    var reviewRating: Int {
        return review.rating
    }
    
    var reviewDate: Date {
        return review.date
    }
    
    var reviewText: String {
        return review.reviewText
    }
}

let firstReview = ReviewsViewModel(review: ReviewsModel(name: "Имя", rating: 4, date: Date(), reviewText: "Отличный дракон"))

