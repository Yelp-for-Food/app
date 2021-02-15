//
//  SearchBarView.swift
//  yelp-for-food
//
//  Created by Rafa Vazquez on 2/14/21.
//

import SwiftUI

struct SearchBarView: View {
    @State private var text: String = ""
    
    var body: some View {
        
            HStack(spacing:12){
                TextField(" Search for food", text: $text)
                    .frame(maxWidth: .infinity)
                    .padding(.leading, 15)
                    .font(Font.system(size: 18, weight: .semibold))
                    
                
                Button(action: {}) {
                    Image(systemName: "magnifyingglass")
                        .padding(.trailing, 15)
                        
                }
                
            }
            .frame(width: 330, height: 50, alignment: .leading)
            .foregroundColor(.gray)
            .background(Color.white)
            .cornerRadius(25)
            .shadow(color: Color(.black).opacity(0.15), radius: 4, x: 4, y: 8)
        
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
    }
}
