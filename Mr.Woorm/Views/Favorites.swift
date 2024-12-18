//
//  Favorites.swift
//  Mr.Woorm
//
//  Created by Laura Bracale on 14/12/24.
//

import SwiftUI
import SwiftData

struct Favorites: View {
    @Environment(\.colorScheme) var colorScheme
    var bookView = BookView()
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                
                ForEach(bookView.completeLibrary.indices, id: \.self) { index in
                    let book = bookView.completeLibrary[index]
                    
                    if book.isFavorite == true {
                        BookCard(book: book)
                    }
                        
                }
    
                
            } // scroll
            .navigationTitle("Favorites")
        } // navigation
    } // BODY
}

#Preview {
    Favorites()
}

