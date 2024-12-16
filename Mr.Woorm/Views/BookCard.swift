//
//  BookCard.swift
//  Mr.Woorm
//
//  Created by Laura Bracale on 14/12/24.
//

import SwiftUI

struct BookCard: View {
    @Environment(\.colorScheme) var colorScheme
    var book: Book
    @State private var isFavorite: Bool = false
    
    var body: some View {
        
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 365, height: 140)
                .foregroundStyle(Color(colorScheme == .light ? .white : .systemGray6))
                .shadow(radius: 3,x: 2,y: 2)
            
            HStack{
                Image(book.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 78, height: 125)
                    .cornerRadius(8)
                
                
                VStack(alignment: .leading){
                    Text(book.name)
                        .font(.footnote)
                        .fontWeight(.medium)
                    
                    Text(book.author)
                        .font(.caption2)
                        .padding(.bottom, 50.0)

                    HStack(){
                        Text("45%")
                            .font(.caption2)
                            .fontWeight(.light)
                    } // hstack
                    ProgressView(value: 45, total: 100)
                   
                    Button(action: {
                        isFavorite.toggle()
                    },
                           label:{
                        Image(systemName: isFavorite ? "heart.fill" : "heart")
                            .foregroundColor(isFavorite ? .red : .gray)
                            .padding(.leading, 235.0)
                    } )
                } // end vstack
                
            } // END HSTACK
            .padding(.horizontal, 30.0)
            .padding(.vertical)
        } //end zstack
        
    } // BODY
}

#Preview {
    BookCard(book: Book(name: "Captive Prince", author: "C.S. Pacat", imageName: "captive"))
}
