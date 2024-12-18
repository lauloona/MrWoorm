//
//  BookView.swift
//  Mr.Woorm
//
//  Created by Laura Bracale on 14/12/24.
//

import Foundation
import SwiftData

class BookView: ObservableObject {
    
    static var library: [Book] {
        return [
            Book(name: "Captive Prince", author: "C.S. Pacat", imageName: "captive", isFavorite: true),
            Book(name: "A Court of Thorns and Roses", author: "Sarah J. Maas", imageName: "acotar", isFavorite: true),
            Book(name: "Sorcery of Thorns", author: "Margaret Rogerson", imageName: "sorcery", isFavorite: isFavorite),
            Book(name: "A Court of Wings and Ruins", author: "Sarah J. Maas", imageName: "acowar", isFavorite: isFavorite),
            Book(name: "A Court of Mist and Fury", author: "Sarah J. Maas", imageName: "acomaf", isFavorite: isFavorite),
            Book(name: "Six of Crows", author: "Leigh Bardugo", imageName: "sixofcrows", isFavorite: isFavorite),
            Book(name: "Crooked Kingdom", author: "Leigh Bardugo", imageName: "crooked", isFavorite: isFavorite)
        ]
    }
    
    var completeLibrary: [Book] = BookView.library
    
    static var isFavorite: Bool = false
        
    func addFavorite() {
        if BookView.isFavorite == false {
            BookView.isFavorite = true
        } else {
            BookView.isFavorite = false
        }
        print("oah")
    }
}
