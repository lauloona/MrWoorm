//
//  MainView.swift
//  Mr.Woorm
//
//  Created by Laura Bracale on 14/12/24.
//

import SwiftUI
import SwiftData

struct MainView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        TabView {
            
            Mybooks()
                .tabItem {
                    Label("Books", systemImage: "book.fill")
                        .accessibilityLabel("Books")
                }
            
            Myshelves()
                .tabItem{
                    Label("Shelves", systemImage: "books.vertical.fill")
                        .accessibilityLabel("Shelves")
                }
            
            Favorites()
                .tabItem{
                    Label("Favorites", systemImage:"heart.fill")
                        .accessibilityLabel("Favorites Books")
                }

        } // END TAB VIEW
    } // END BODY
}

#Preview {
    MainView()
}

