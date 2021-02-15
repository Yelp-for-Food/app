//
//  HomePage.swift
//  yelp-for-food
//
//  Created by Rafa Vazquez on 2/10/21.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        ScrollView {
        SearchBarView()
//            Image("gray")
     //                .resizable()
     //                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
     //                .

        ExploreRowView()
//            .edgesIgnoringSafeArea(.all)
//            .offset(y: -50)

        FavoriteRowView()
            
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View{
        HomePage()
    }
    
}
