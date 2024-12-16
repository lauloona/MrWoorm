//
//  BookView.swift
//  Mr.Woorm
//
//  Created by Laura Bracale on 14/12/24.
//

import Foundation

class BookView: ObservableObject {
    @Published var library = [
        Book(name: "Captive Prince", author: "C.S. Pacat", imageName: "captive"),
        Book(name: "A Court of Thorns and Roses", author: "Sarah J. Maas", imageName: "acotar"),
        Book(name: "Sorcery of Thorns", author: "Margaret Rogerson", imageName: "sorcery"),
        Book(name: "A Court of Wings and Ruins", author: "Sarah J. Maas", imageName: "acowar"),
        Book(name: "A Court of Mist and Fury", author: "Sarah J. Maas", imageName: "acomaf"),
        Book(name: "Six of Crows", author: "Leigh Bardugo", imageName: "sixofcrows"),
        Book(name: "Crooked Kingdom", author: "Leigh Bardugo", imageName: "crooked")
    ]
    
}
