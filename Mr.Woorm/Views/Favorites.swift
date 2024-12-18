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
    //@Query(filter: #Predicate<Book> { book in
    //    book.isFavorite == true
    //})
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
                 
                //if favoritebooks.isEmpty {
                //
                //    Text("No favorites yet")
                //        .font(.title2)
                //        .foregroundStyle(.secondary)
                //        .padding()
                //        .accessibilityLabel("No favorites yet")
                    
                //}
                //else {
                //    List(favoritebooks) { book in
                //        Text(book.author)
                //    }
                //}
    
                
            } // scroll
            .navigationTitle("Favorites")
        } // navigation
    } // BODY
}

#Preview {
    Favorites()
}

