//
//  MainView.swift
//  Mr.Woorm
//
//  Created by Laura Bracale on 14/12/24.
//

import SwiftUI

struct MainView: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        TabView {
            
            Mybooks()
                .tabItem {
                    Label("Books", systemImage: "book.fill")
                }
            
            Myshelves()
                .tabItem{
                    Label("Shelves", systemImage: "books.vertical.fill")
                }
            
            Favorites()
                .tabItem{
                    Label("Favorites", systemImage:"heart.fill")
                }
            
        } // END TAB VIEW
    } // END BODY
}

#Preview {
    MainView()
}

