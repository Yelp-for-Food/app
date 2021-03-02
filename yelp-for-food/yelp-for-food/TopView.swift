//
//  SwiftUIView.swift
//  yelp-for-food
//
//  Created by Alberto Dominguez on 2/16/21.
//

import SwiftUI

struct TopView: View {
    @State var image: String
    
    var body: some View {
        
            VStack {
                
                Image(self.image)
                    .resizable()
                    .frame(width: screenWidth, height: 215)
                    .aspectRatio(contentMode: .fit)
                
                SearchBarView()
                    .offset(y:-25)
                Spacer()
            }.ignoresSafeArea()
        
       
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        TopView(image: "IPU-logo-3")
    }
}


let screenWidth = UIScreen.main.bounds.width
