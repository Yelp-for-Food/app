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
        HStack{
        TextField("Search for food", text: $text)
            .font(Font.system(size: 25, weight: .semibold))
            .frame(width: 350, height: 50)
            .multilineTextAlignment(TextAlignment.center)
            .textFieldStyle(RoundedBorderTextFieldStyle())
        
        
        }
        
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
    }
}
