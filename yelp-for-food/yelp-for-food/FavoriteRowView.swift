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
            Image(uiImage: favoriteCard.image.load())
                .resizable()
                .frame(width: 160, height: .infinity)
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
                
                NavigationLink(
                    destination: DetailPageView(title: favoriteCard.title,
                                                text: favoriteCard.text,
                                                image: favoriteCard.image,
                                                ratting: favoriteCard.rattings),
                    label: {
                        Text("read more")
                            .font(.subheadline)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.system(size: 16.0))
                            .foregroundColor(.blue)
                    }
                    
                )
                
//                Button(action: {}) {
//                    Text("read more")
//                        .font(.subheadline)
//                }
                
            }
            .padding(.vertical,10)
        }
        .frame(maxWidth: 320, maxHeight: 175)
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
    FavoriteCard(title: "Taco",
                text: "A taco is a traditional Mexican dish consisting of a small hand sized corn or wheat tortilla topped with a filling. The tortilla is then folded around the filling and eaten by hand. A taco can be made with a variety of fillings, including beef, pork, chicken, seafood, beans, vegetables, and cheese, allowing for great versatility and variety. ",
                image: "https://media1.fdncms.com/pittsburgh/imager/u/blog/3373151/side_27.jpg?cb=1568227857",
                rattings: 1),
    
    FavoriteCard(title: "Burger",
                text: "A hamburger (also burger for short) is a sandwich consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun. The patty may be pan fried, grilled, smoked or flame broiled.",
                image: "https://www.berkeleyside.com/wp-content/uploads/2017/03/kronnerburger.jpg",
                rattings: 2),
    
    FavoriteCard(title: "Suchi",
                text: "Sushi, a staple rice dish of Japanese cuisine, consisting of cooked rice flavoured with vinegar and a variety of vegetable, egg, or raw seafood garnishes and served cold.",
                image: "https://st2.depositphotos.com/1000604/7802/i/600/depositphotos_78027540-stock-photo-sushi-rolls.jpg",
                rattings: 3),
    
    FavoriteCard(title: "Steak",
                text: "A steak is a meat generally sliced across the muscle fibers, potentially including a bone. It is normally grilled, though can also be pan-fried. It is often grilled in an attempt to replicate the flavor of steak cooked over the glowing coals of an open fire.",
                image: "https://cdn.shopify.com/s/files/1/0027/9645/3961/products/Beef_Rib_Eye_shopify_1200x.jpg?v=1539137742",
                rattings: 4),
    
    FavoriteCard(title: "Ribs",
                text: "Ribs are served as a rack of meat which diners customarily tear apart by hand, then eat the meat from the bone.",
                image: "https://i.pinimg.com/originals/5d/1d/d4/5d1dd49be7c5e23a2c7fda4c3a6a6ee0.jpg",
                rattings: 5)

]
//FavoriteCard
