//
//  ExploreRowView.swift
//  yelp-for-food
//
//  Created by Alberto Dominguez on 2/9/21.
//

import SwiftUI

struct ExploreRowView: View {
    var body: some View {
        
        VStack() {
                
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
        
        //        NavigationView {
        VStack {
            Image(uiImage: exploreCard.image.load())
                .resizable()
                .aspectRatio(contentMode: .fill)
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
                
                
                NavigationLink(
                    destination: DetailPageView(title: exploreCard.title,
                                                text: exploreCard.text,
                                                image: exploreCard.image,
                                                ratting: exploreCard.rattings),
                    label: {
                        Text("read more")
                            .font(.subheadline)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.system(size: 16.0))
                            .foregroundColor(.blue)
                    }
                    
                )
                
            }.padding()
            
        }
        .frame(width: 275, height: 275)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: Color(.black).opacity(0.15), radius: 4, x: 4, y: 8)
    }
    //    }
    
    
}


struct ExploreCard: Identifiable {
    var id = UUID()
    var title: String
    var text: String
    var image: String
    var rattings: Double
}


let exploreCardData = [
    ExploreCard(title: "Taco",
                text: "A taco is a traditional Mexican dish consisting of a small hand sized corn or wheat tortilla topped with a filling. The tortilla is then folded around the filling and eaten by hand. A taco can be made with a variety of fillings, including beef, pork, chicken, seafood, beans, vegetables, and cheese, allowing for great versatility and variety. ",
                image: "https://media1.fdncms.com/pittsburgh/imager/u/blog/3373151/side_27.jpg?cb=1568227857",
                rattings: 1),
    
    ExploreCard(title: "Burger",
                text: "A hamburger (also burger for short) is a sandwich consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun. The patty may be pan fried, grilled, smoked or flame broiled.",
                image: "https://www.berkeleyside.com/wp-content/uploads/2017/03/kronnerburger.jpg",
                rattings: 2),
    
    ExploreCard(title: "Suchi",
                text: "some text will go here for the food item",
                image: "https://st2.depositphotos.com/1000604/7802/i/600/depositphotos_78027540-stock-photo-sushi-rolls.jpg",
                rattings: 3),
    
    ExploreCard(title: "Beef",
                text: "some text will go here for the food item",
                image: "https://cdn.shopify.com/s/files/1/0027/9645/3961/products/Beef_Rib_Eye_shopify_1200x.jpg?v=1539137742",
                rattings: 4),
    
    ExploreCard(title: "Ribs",
                text: "some text will go here for the food item",
                image: "https://i.pinimg.com/originals/5d/1d/d4/5d1dd49be7c5e23a2c7fda4c3a6a6ee0.jpg",
                rattings: 5)
]




