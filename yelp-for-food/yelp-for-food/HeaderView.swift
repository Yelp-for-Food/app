//
//  HeaderView.swift
//  yelp-for-food
//
//  Created by Alberto Dominguez on 2/16/21.
//

import SwiftUI

struct HeaderView: View {
    @State var header: String!
    
    var body: some View {
        HStack() {
            Text(self.header)
                .font(.largeTitle)
                .fontWeight(.semibold)
            Spacer()
            
        }.padding(.horizontal, 20)
        .frame(width: .infinity, height: 45, alignment: .leading)
        
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(header: "Explore")
    }
}
