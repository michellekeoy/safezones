//
//  Rating.swift
//  calendar
//
//  Created by Michelle on 28/8/2020.
//  Copyright © 2020 michellekeoy. All rights reserved.
//

import Foundation
import SwiftUI

struct RatingView: View{
    
    @Binding var rating: Int

    var label = ""

    var maximumRating = 5

    var offImage = Image("unfill").resizable()
    var onImage = Image("fill").resizable()
    
    func image(for number: Int) -> Image {
        if number > rating {
            return offImage
        } else {
            return onImage
        }
    }
    
    var body: some View {
        HStack {
            if label.isEmpty == false {
                Text(label)
            }

            ForEach(1..<maximumRating + 1) { number in
                self.image(for: number)
                    .padding(7)
                    .onTapGesture {
                        self.rating = number
                }
            }
        }.frame(width: 360, height: 75)
    }
}
