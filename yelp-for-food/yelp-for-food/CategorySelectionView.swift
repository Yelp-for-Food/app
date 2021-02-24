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
                        //CategoryCell()
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
    var category: Category
    static let column = 2
    static let row = 12
    let width = (UIScreen.main.bounds.width / 2)-20
    var body: some View {
        ZStack{
            
            Image("gray")
                .resizable()
                .frame(width: width, height: width)
                .cornerRadius(10, antialiased: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
            
            Text("\(category.name)")
                .offset(y: 50)
        }
    }
}

struct Category: Identifiable {
    var id = UUID()
    var name: String
}

var eachCategory = [
    Category(name: "American"),
    Category(name: "British"),
    Category(name: "Canadian"),
    Category(name: "Chinese"),
    Category(name: "Dutch"),
    Category(name: "Egyptian"),
    Category(name: "French"),
    Category(name: "Greek"),
    Category(name: "Indian"),
    Category(name: "Irish"),
    Category(name: "Italian"),
    Category(name: "Jamaican"),
    Category(name: "Japanese"),
    Category(name: "Kenyan"),
    Category(name: "Malaysian"),
    Category(name: "Mexican"),
    Category(name: "Moroccan"),
    Category(name: "Polish"),
    Category(name: "Russian"),
    Category(name: "Spanish"),
    Category(name: "Thai"),
    Category(name: "Tunisian"),
    Category(name: "Turkish"),
    Category(name: "Vietnamese"),
]
