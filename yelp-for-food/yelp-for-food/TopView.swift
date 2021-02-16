//
//  SwiftUIView.swift
//  yelp-for-food
//
//  Created by Alberto Dominguez on 2/16/21.
//

import SwiftUI

struct TopView: View {
    var body: some View {
        
        VStack {
            Image("gray")
                .resizable()
                .frame(width: .infinity, height: 215)
                .aspectRatio(contentMode: .fit)
            
            SearchBarView()
                .offset(y:-25)
            Spacer()
        }.ignoresSafeArea()
       
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        TopView()
    }
}
