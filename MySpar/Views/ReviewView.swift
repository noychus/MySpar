//
//  ReviewView.swift
//  MySpar
//
//  Created by NOY  on 01.02.2024.
//

import SwiftUI

struct ReviewView: View {
    
    @ObservedObject var vm: ReviewsViewModel
    
    var body: some View {
        VStack {
            TextField("Ваше Имя", text: $vm.reviewName)
        }
    }
}

#Preview {
    ReviewView(vm: firstReview)
}

