//
//  DataStore.swift
//  yelp-for-food
//
//  Created by Alberto Dominguez on 3/2/21.
//

import Foundation
import SwiftUI
import Combine

class DataStore: ObservableObject{
    @Published var posts: [Post] = [ ]

    init() {
         getPosts()
    }

    func getPosts() {
         Api().getPosts { (posts) in
            self.posts = posts
         }
     }
}
