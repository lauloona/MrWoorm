//
//  Mybooks.swift
//  Mr.Woorm
//
//  Created by Laura Bracale on 14/12/24.
//

import SwiftUI

struct Mybooks: View {
    @Environment(\.colorScheme) var colorScheme
    
    var bookView = BookView()
    
    var body: some View {
        
        NavigationStack {
            
        HStack {
            NavigationLink(destination: PDFReader(pdfName: "redpdf")){
                
                Image("red")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 120, height: 202)
                    .cornerRadius(5)
                            } // end navigationlink
            
            VStack(alignment: .leading) {
                Spacer()
                Text("RECENTLY READ:")
                    .font(.footnote)
                    .fontWeight(.light)
                    .multilineTextAlignment(.leading)
                Text("Red, White & Royal Blue")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                Spacer()
                
                HStack(){
                    Text("15%")
                        .font(.caption)
                        .fontWeight(.light)
                    Spacer()
                    Text("CONTINUE  >")
                        .font(.caption)
                        .fontWeight(.light)
                } // hstack
                ProgressView(value: 15, total: 100)
            } //vstack
            } // end hstack
        .frame(height: 202)
        .padding()
    
        Divider()
        
            ScrollView {
                ForEach(bookView.library) { book in
                    BookCard(book: book)
                        .padding(-5)
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "magnifyingglass")
                    })
                } // toolbaritem
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "plus")
                    })
                } // toolbaritem
            }
        
        .navigationTitle("My books")
            
        } // end navigtionstack
        
    } // END BODY !!!
}

#Preview {
    Mybooks()
}
