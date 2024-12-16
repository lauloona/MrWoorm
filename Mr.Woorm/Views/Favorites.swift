//
//  Favorites.swift
//  Mr.Woorm
//
//  Created by Laura Bracale on 14/12/24.
//

import SwiftUI

struct Favorites: View {
    @Environment(\.colorScheme) var colorScheme
    @ObservedObject var bookView = BookView()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                
            } // scroll
            .navigationTitle("Favorites")
        } // navigation
    } // BODY
}

#Preview {
    Favorites()
}

