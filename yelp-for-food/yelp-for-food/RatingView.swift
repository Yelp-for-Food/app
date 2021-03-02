//
//  RatingView.swift
//  yelp-for-food
//
//  Created by Alberto Dominguez on 2/15/21.
//

import SwiftUI

struct RatingView: View {
    @Binding var rating: Int?
    
    private func starType(index: Int) -> String{
        if let rating = self.rating{
            return index <= rating ? "star.fill" : "star"
        }else{
            return "star"
        }
    }
    
    var body: some View {
        
        HStack{
            ForEach(1 ... 5, id: \.self) { index in
                Image(systemName: self.starType(index: index) )
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(Color(#colorLiteral(red: 0.9960784314, green: 0.7411764706, blue: 0.03529411765, alpha: 1)))
                    .onTapGesture {
                        self.rating = index
                    }
            }
        }
    }
    
    
    
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(rating: .constant(0))
    }
}
