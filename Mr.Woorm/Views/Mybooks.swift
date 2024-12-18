//
//  Mybooks.swift
//  Mr.Woorm
//
//  Created by Laura Bracale on 14/12/24.
//

import SwiftUI
import SwiftData

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
                    .accessibilityLabel("Cover image of Red, White & Royal Blue")
                            } // end navigationlink
            
            VStack(alignment: .leading) {
                Spacer()
                Text("RECENTLY READ:")
                    .font(.footnote)
                    .fontWeight(.light)
                    .multilineTextAlignment(.leading)
                    .accessibilityLabel("Recently read")
                
                Text("Red, White & Royal Blue")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .accessibilityLabel("Red, White and Royal Blue by Casey McQuiston")
                Spacer()
                
                HStack(){
                    Text("15%")
                        .font(.caption)
                        .fontWeight(.light)
                        .accessibilityLabel("Reading progress: 15%")
                    
                    Spacer()
                    Text("CONTINUE  >")
                        .font(.caption)
                        .fontWeight(.light)
                        .accessibilityLabel("Continue reading. Tap here if you want to do it.")
                } // hstack
                ProgressView(value: 15, total: 100)
                    .accessibilityLabel("Reading progress bar: 15 percent complete")
                
            } //vstack
            } // end hstack
        .frame(height: 202)
        .padding()
    
        Divider()
        
            ScrollView {
                ForEach(bookView.library) { book in
                    BookCard(book: book)
                        
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "magnifyingglass")
                            .accessibilityLabel("Search books")
                    })
                } // toolbaritem
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "plus")
                            .accessibilityLabel("Add a new book")
                    })
                } // toolbaritem
            }
        
        .navigationTitle("My books")
        .accessibilityLabel("My books View")
            
        } // end navigtionstack
        
    } // END BODY !!!
}

#Preview {
    Mybooks()
}
