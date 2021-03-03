//
//  ExploreRowView.swift
//  yelp-for-food
//
//  Created by Alberto Dominguez on 2/9/21.
//

import SwiftUI

struct ExploreRowView: View {
    @ObservedObject var store = DataStore()
    
    
    var body: some View {
        VStack() {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(store.posts) { item in
                        ExploreCardView(exploreCard: item)
                    }
                }
                .padding(20)
            }
        }
        .onAppear {
        }
        
        
        
    }
}

struct ExploreRowView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreRowView()
    }
}


struct ExploreCardView: View {
    var exploreCard : Post
    
    var body: some View {
        
        //        NavigationView {
        VStack {
            Image(uiImage: exploreCard.thumb.load())
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(idealWidth: .infinity, idealHeight: 200)
            
            VStack{
                HStack {
                    Text(exploreCard.name)
                        .font(.system(size: 18.0))
                        .fontWeight(.bold)
                        .lineLimit(2)
                    Spacer()
                    
                    StarsView(rating: 3)
                }
                .padding(.bottom, 10)
                .foregroundColor(Color(#colorLiteral(red: 0.3529411765, green: 0.3529411765, blue: 0.3529411765, alpha: 1)))
                
                
                NavigationLink(
                    destination: DetailPageView(title: exploreCard.name,
                                                text: exploreCard.description,
                                                image: exploreCard.thumb,
                                                rating: 3),
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
        .frame(width: 275, height: 375)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: Color(.black).opacity(0.15), radius: 4, x: 4, y: 8)
    }
    
    
}

struct Post: Codable, Identifiable {
    let id = UUID()
    var name: String
    var thumb: String
    var description: String
}

class Api {
    func getPosts(completion: @escaping ([Post]) -> ()) {
        let url = URL(string: "https://ipu.dejay.dev/meals")!
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            
            let posts = try! JSONDecoder().decode([Post].self, from: data!)
            print(posts.count)
            DispatchQueue.main.async {
                completion(posts)
            }
        }
        .resume()
    }
}

