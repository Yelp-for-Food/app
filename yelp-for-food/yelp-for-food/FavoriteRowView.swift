//
//  FavoriteRowView.swift
//  yelp-for-food
//
//  Created by Alberto Dominguez on 2/9/21.
//
// i am in
import SwiftUI

struct FavoriteRowView: View {
    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    ForEach(favoriteCardData) { item in
                        FavoriteCardView(favoriteCard: item)
                    }
                }.padding()
            }
        }
    }
}

struct FavoriteRowView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteRowView()
    }
}



struct FavoriteCardView: View {
    var favoriteCard : FavoriteCard
    
    var body: some View {
        HStack {
            Image(favoriteCard.image)
                .resizable()
                .frame(width: 150, height: .infinity)
                .aspectRatio(contentMode: .fit)
                .clipped()
            
            VStack(alignment: .leading) {
                Text(favoriteCard.title)
                    .font(.system(size: 18.0))
                    .fontWeight(.bold)
                    .lineLimit(2)
                    .padding(.bottom, 2)
                
                StarsView(ratting: favoriteCard.rattings)
                
                Spacer()
                
                Text(favoriteCard.text)
                    .lineLimit(2)
                    .padding(.trailing, 10)
                    .font(.subheadline)
                    
                Spacer()
                
                Button(action: {}) {
                    Text("read more")
                        .font(.subheadline)
                }
                
            }
            .padding(.vertical,10)
        }
        .frame(maxWidth: 300, maxHeight: 175)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: Color(.black).opacity(0.15), radius: 4, x: 4, y: 8)
        
        
    }
}


struct FavoriteCard: Identifiable {
    var id = UUID()
    var title: String
    var text: String
    var image: String
    var rattings: Double
}

var favoriteCardData = [
    FavoriteCard(title: "Taco", text: "some text will go here for the food item", image: "gray", rattings: 1),
    FavoriteCard(title: "Burger", text: "some text will go here for the food item", image: "gray", rattings: 2),
    FavoriteCard(title: "Suchi", text: "some text will go here for the food item", image: "gray", rattings: 3),
    FavoriteCard(title: "Beef", text: "some text will go here for the food item", image: "gray", rattings: 4),
    FavoriteCard(title: "Ribs", text: "some text will go here for the food item", image: "gray", rattings: 5)

]
