//
//  BookCard.swift
//  Mr.Woorm
//
//  Created by Laura Bracale on 14/12/24.
//

import SwiftUI
import SwiftData

struct BookCard: View {
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.modelContext) private var modelContext
  
    var book: Book
        
    var body: some View {
        
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 365, height: 140)
                .foregroundStyle(Color(colorScheme == .light ? .white : .systemGray6))
                .shadow(radius: 3,x: 2,y: 2)
                .accessibilityLabel("\(book.name)")
            
            HStack{
                Image(book.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 78, height: 125)
                    .cornerRadius(8)
                    .accessibilityLabel("\(book.name) cover image")
                
                
                VStack(alignment: .leading){
                    Text(book.name)
                        .font(.footnote)
                        .fontWeight(.medium)
                        .accessibilityLabel("Book name: \(book.name)")
                    
                    Text(book.author)
                        .font(.caption2)
                        .padding(.bottom, 50.0)
                        .accessibilityLabel("Author: \(book.author)")

                    HStack(){
                        Text("45%")
                            .font(.caption2)
                            .fontWeight(.light)
                            .accessibilityLabel("Reading progress: 45%")
                    } // hstack
                    ProgressView(value: 45, total: 100)
                        .accessibilityLabel("Reading progress bar: 45 percent complete")
                    
                    Button(action: {
                        book.isFavorite.toggle()
                        
                    }, label:{
                        Image(systemName: book.isFavorite ? "heart.fill" : "heart")
                            .foregroundColor(book.isFavorite ? .red : .gray)
                            .padding(.leading, 235.0)
                            .accessibilityLabel("Heart button. Press to add the book to the Favorites")
                    } )
                } // end vstack
                
            } // END HSTACK
            .padding(.horizontal, 30.0)
            .padding(.vertical)
        } //end zstack
        
    } // BODY

}

#Preview {
    BookCard(book: Book(name: "Sample Book", author: "Sample Author", imageName: "sample_image", isFavorite: false))
}
