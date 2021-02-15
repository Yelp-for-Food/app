//
//  DetailPageView.swift
//  yelp-for-food
//
//  Created by Alberto Dominguez on 2/15/21.
//

import SwiftUI

struct DetailPageView: View {
    @State private var rattingEntered: Int?
    
    var body: some View {
        
        VStack(spacing: 25) {
            Image("gray")
                .resizable()
                .frame(width: .infinity, height: 265)
                
            HStack {
                Text("Dish Name")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(#colorLiteral(red: 0.3529411765, green: 0.3529411765, blue: 0.3529411765, alpha: 1)))
                
                Spacer()
                
                StarsView(ratting: 4)
            }.padding(.horizontal, 20)
            
            Text("lskd fjwoifj aoij owij oi woweiu oi hwoi foi vfh oiwhkEJVOIH fvlskd fjwoifj aoij owij oi woweiu oi hwoi foidj o ioi oweo po ijcmoeifj iewoei mcoej p ddep kjfoej foiwj kgnvkfjoqrujo kowie jaoir")
                .multilineTextAlignment(.leading)
                .padding(.horizontal, 20)
                        
            Button(action: {}) {
                Text("Add to Favorites")
                    .frame(width: 250, height: 55, alignment: .center)
                    .background(Color(#colorLiteral(red: 0.9960784314, green: 0.7411764706, blue: 0.03529411765, alpha: 1)))
                    .foregroundColor(.white)
                    .font(Font.system(size: 18, weight: .bold))
                    .cornerRadius(15)
            }
            
            Spacer()
            
            VStack(spacing: 15){
                Text("How would you rate this dish?")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(#colorLiteral(red: 0.3529411765, green: 0.3529411765, blue: 0.3529411765, alpha: 1)))
                
                RatingView(ratting: $rattingEntered)
                
                Button(action: {}) {
                    Text("Submit ratting")
                        .frame(width: 250, height: 55, alignment: .center)
                        .background(Color(#colorLiteral(red: 0.9960784314, green: 0.7411764706, blue: 0.03529411765, alpha: 1)))
                        .foregroundColor(.white)
                        .font(Font.system(size: 18, weight: .bold))
                        .cornerRadius(15)
                }
            }
            
            Spacer()
            Spacer()

        }.ignoresSafeArea()
        
        
        
        
    }
}






struct DetailPageView_Previews: PreviewProvider {
    static var previews: some View {
        DetailPageView()
    }
}
