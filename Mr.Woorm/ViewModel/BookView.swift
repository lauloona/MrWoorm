//
//  BookView.swift
//  Mr.Woorm
//
//  Created by Laura Bracale on 14/12/24.
//

import Foundation
import SwiftData

class BookView: ObservableObject {
    
    @Published var library = [
        Book(name: "Captive Prince", author: "C.S. Pacat", imageName: "captive", isFavorite: true),
        Book(name: "A Court of Thorns and Roses", author: "Sarah J. Maas", imageName: "acotar", isFavorite: true),
        Book(name: "Sorcery of Thorns", author: "Margaret Rogerson", imageName: "sorcery", isFavorite: false),
        Book(name: "A Court of Wings and Ruins", author: "Sarah J. Maas", imageName: "acowar", isFavorite: false),
        Book(name: "A Court of Mist and Fury", author: "Sarah J. Maas", imageName: "acomaf", isFavorite: false),
        Book(name: "Six of Crows", author: "Leigh Bardugo", imageName: "sixofcrows", isFavorite: false),
        Book(name: "Crooked Kingdom", author: "Leigh Bardugo", imageName: "crooked", isFavorite: false)
    ]
    
}
