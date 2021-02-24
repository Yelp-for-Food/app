//
//  CategorySelectionView.swift
//  yelp-for-food
//
//  Created by Rafa Vazquez on 2/18/21.
//

import SwiftUI


struct CategorySelectionView: View {
    
    var body: some View {
        
        ScrollView{
            ForEach(0..<CategoryCell.row){ i in
                HStack{
                    ForEach(0..<CategoryCell.column){ j in
                        CategoryCell()
                    }
                }
            }
        }
    }
    
}

struct CategorySelectionView_Previews: PreviewProvider {
    static var previews: some View {
        CategorySelectionView()
    }
}


struct CategoryCell: View {
    static let column = 2
    static let row = 9
    let width = (UIScreen.main.bounds.width / 2)-20
    var body: some View {
        ZStack{
            
            Image("gray")
                .resizable()
                .frame(width: width, height: width)
            
            Text("Hello")
                .offset(y: 30)
        }
    }
}
