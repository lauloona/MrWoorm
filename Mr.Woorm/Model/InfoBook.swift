//
//  InfoBook.swift
//  Mr.Woorm
//
//  Created by Laura Bracale on 14/12/24.
//

import Foundation
import SwiftData

@Model
class Book {
    
    var id = UUID()
    var name: String
    var author: String
    var imageName: String
    var isFavorite: Bool
    
    internal init(id: UUID = UUID(), name: String, author: String, imageName: String, isFavorite: Bool) {
        self.id = id
        self.name = name
        self.author = author
        self.imageName = imageName
        self.isFavorite = isFavorite
    }

}
