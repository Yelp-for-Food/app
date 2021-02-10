//
//  ExploreRowView.swift
//  yelp-for-food
//
//  Created by Alberto Dominguez on 2/9/21.
//

import SwiftUI

struct ExploreRowView: View {
    var body: some View {
          VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(exploreCardData) { item in
                        ExploreCardView(exploreCard: item)
                    }
                }
                .padding(20)
            }
        }
        
        
    }
}

struct ExploreRowView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreRowView()
    }
}


struct ExploreCardView: View {
    var exploreCard : ExploreCard
    
    var body: some View {
        VStack {
            Image(exploreCard.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity, maxHeight: 200)

            VStack{
                HStack {
                    Text(exploreCard.title)
                        .font(.system(size: 18.0))
                        .fontWeight(.bold)
                        .lineLimit(2)
                    Spacer()
                    
                    StarsView(ratting: exploreCard.rattings)
                }
                .padding(.bottom, 10)
                .foregroundColor(Color(#colorLiteral(red: 0.3529411765, green: 0.3529411765, blue: 0.3529411765, alpha: 1)))


                Button(action: {}) {
                    Text("read more")
                        .font(.subheadline)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.system(size: 16.0))
            }.padding()

        }
        .frame(width: 275, height: 275)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: Color(.black).opacity(0.15), radius: 4, x: 4, y: 8)

    }
}


struct ExploreCard: Identifiable {
    var id = UUID()
    var title: String
    var text: String
    var image: String
    var rattings: Double
}


let exploreCardData = [
    ExploreCard(title: "Taco", text: "some text will go here for the food item", image: "gray", rattings: 1),
    ExploreCard(title: "Burger", text: "some text will go here for the food item", image: "gray", rattings: 2),
    ExploreCard(title: "Suchi", text: "some text will go here for the food item", image: "gray", rattings: 3),
    ExploreCard(title: "Beef", text: "some text will go here for the food item", image: "gray", rattings: 4),
    ExploreCard(title: "Ribs", text: "some text will go here for the food item", image: "gray", rattings: 5)
]



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