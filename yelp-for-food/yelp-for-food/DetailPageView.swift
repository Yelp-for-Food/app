//
//  DetailPageView.swift
//  yelp-for-food
//
//  Created by Alberto Dominguez on 2/15/21.
//

import SwiftUI

struct DetailPageView: View {
    @State private var ratingEntered: Int?
    
    @State var title: String!
    @State var text: String!
    @State var image: String!
    @State var rating: Double!
    
    var body: some View {
        
        ScrollView {
            VStack(spacing: 25) {
                Image(uiImage: self.image.load())
                    .resizable()
                    .frame(width: detailScreen.width, height: 265)
                    
                HStack {
                    Text(self.title)
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(#colorLiteral(red: 0.3529411765, green: 0.3529411765, blue: 0.3529411765, alpha: 1)))
                    
                    Spacer()
                    
                    StarsView(rating: self.rating)
                }.padding(.horizontal, 20)
                
                Text(self.text)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 20)
                            
                Button(action: {addFavorite()}) {
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
                    
                    RatingView(rating: $ratingEntered)
                    
                    Button(action: {}) {
                        Text("Submit rating")
                            .frame(width: 250, height: 55, alignment: .center)
                            .background(Color(#colorLiteral(red: 0.9960784314, green: 0.7411764706, blue: 0.03529411765, alpha: 1)))
                            .foregroundColor(.white)
                            .font(Font.system(size: 18, weight: .bold))
                            .cornerRadius(15)
                    }
                }
                
                Spacer()
                Spacer()

            }
        }.ignoresSafeArea()
        
    }
    
    
    func addFavorite(){
        print("add favorite")
        let newFavorite = FavoriteCard(title: self.title, text: self.text, image: self.image, ratings: self.rating)
        
        print(favoriteCardData.count)
        favoriteCardData.append(newFavorite)
        print(favoriteCardData.count)
    }
}






struct DetailPageView_Previews: PreviewProvider {
    static var previews: some View {
        DetailPageView(title: "Taco's",
                       text: "lskd fjwoifj aoij owij oi woweiu oi hwoi foi vfh oiwhkEJVOIH fvlskd fjwoifj aoij owij oi woweiu oi hwoi foidj o ioi oweo po ijcmoeifj iewoei mcoej p ddep kjfoej foiwj kgnvkfjoqrujo kowie jaoir",
                       image: "gray",
                       rating: 4)
    }
}

let detailScreen = UIScreen.main.bounds
