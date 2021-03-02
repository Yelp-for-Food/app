//
//  HomePage.swift
//  yelp-for-food
//
//  Created by Rafa Vazquez on 2/10/21.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 10){
                    TopView(image: "IPU-logo-2")
                    HeaderView(header: "Explore")
                    
                    ExploreRowView()
                    
                    HeaderView(header: "Favorite")
                    FavoriteRowView()
                }
                
            }.ignoresSafeArea()
            //.navigationTitle("Yelp-for-food")
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View{
        HomePage()
    }
    
}
