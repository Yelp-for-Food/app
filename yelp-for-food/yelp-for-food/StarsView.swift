//
//  StarsView.swift
//  yelp-for-food
//
//  Created by Alberto Dominguez on 2/9/21.
//

import SwiftUI

struct StarsView: View {
    var ratting: Double
    
    var body: some View {
        HStack(spacing: 5){
            Image(systemName: ratting >= 1 ? ("star.fill") : ( "star") )
                .frame(width: 16, height: 16)
                .foregroundColor(Color(#colorLiteral(red: 0.9960784314, green: 0.7411764706, blue: 0.03529411765, alpha: 1)))
            
            Image(systemName: ratting >= 2 ? ("star.fill") : ( "star") )
                .frame(width: 16, height: 16)
                .foregroundColor(Color(#colorLiteral(red: 0.9960784314, green: 0.7411764706, blue: 0.03529411765, alpha: 1)))
            
            Image(systemName: ratting >= 3 ? ("star.fill") : ( "star") )
                .frame(width: 16, height: 16)
                .foregroundColor(Color(#colorLiteral(red: 0.9960784314, green: 0.7411764706, blue: 0.03529411765, alpha: 1)))
            
            Image(systemName: ratting >= 4 ? ("star.fill") : ( "star") )
                .frame(width: 16, height: 16)
                .foregroundColor(Color(#colorLiteral(red: 0.9960784314, green: 0.7411764706, blue: 0.03529411765, alpha: 1)))
            
            Image(systemName: ratting >= 5 ? ("star.fill") : ( "star") )
                .frame(width: 16, height: 16)
                .foregroundColor(Color(#colorLiteral(red: 0.9960784314, green: 0.7411764706, blue: 0.03529411765, alpha: 1)))
        }
    }
}

struct StarsView_Previews: PreviewProvider {
    static var previews: some View {
        StarsView(ratting: 5)
    }
}
