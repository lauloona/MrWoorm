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
    
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 365, height: 140)
                        .foregroundStyle(Color(colorScheme == .light ? .white : .systemGray6))
                        .shadow(radius: 3,x: 2,y: 2)
                        .accessibilityLabel("Captive Prince")
                    
                    HStack{
                        Image("captive")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 78, height: 125)
                            .cornerRadius(8)
                            .accessibilityLabel("Captive prince cover image")
                        
                        
                        VStack(alignment: .leading){
                            Text("Captive Prince")
                                .font(.footnote)
                                .fontWeight(.medium)
                                .accessibilityLabel("Book name: Captive prince")
                            
                            Text("C.S. Pacat")
                                .font(.caption2)
                                .padding(.bottom, 50.0)
                                .accessibilityLabel("Author: C.S. Pacat")

                            HStack(){
                                Text("45%")
                                    .font(.caption2)
                                    .fontWeight(.light)
                                    .accessibilityLabel("Reading progress: 45%")
                            } // hstack
                            ProgressView(value: 45, total: 100)
                                .accessibilityLabel("Reading progress bar: 45 percent complete")
                            
                            Button(action: {
                               
                                
                            }, label:{
                                Image(systemName: "heart.fill")
                                    .foregroundColor(.red)
                                    .padding(.leading, 235.0)
                                    .accessibilityLabel("Heart button, book saved in the Favorites")
                            } )
                        } // end vstack
                        
                    } // END HSTACK
                    .padding(.horizontal, 30.0)
                    .padding(.vertical)
                } //end zstack
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 365, height: 140)
                        .foregroundStyle(Color(colorScheme == .light ? .white : .systemGray6))
                        .shadow(radius: 3,x: 2,y: 2)
                        .accessibilityLabel("A court of thorn and roses")
                    
                    HStack{
                        Image("acotar")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 78, height: 125)
                            .cornerRadius(8)
                            .accessibilityLabel("A court of thorn and roses cover image")
                        
                        
                        VStack(alignment: .leading){
                            Text("A Court of Thorn and Roses")
                                .font(.footnote)
                                .fontWeight(.medium)
                                .accessibilityLabel("Book name: A court of thorn and roses")
                            
                            Text("Sarah J. Maas")
                                .font(.caption2)
                                .padding(.bottom, 50.0)
                                .accessibilityLabel("Author: Sarah J. Maas")

                            HStack(){
                                Text("45%")
                                    .font(.caption2)
                                    .fontWeight(.light)
                                    .accessibilityLabel("Reading progress: 45%")
                            } // hstack
                            ProgressView(value: 45, total: 100)
                                .accessibilityLabel("Reading progress bar: 45 percent complete")
                            
                            Button(action: {
                               
                                
                            }, label:{
                                Image(systemName: "heart.fill")
                                    .foregroundColor(.red)
                                    .padding(.leading, 235.0)
                                    .accessibilityLabel("Heart button, book saved in the Favorites")
                            } )
                        } // end vstack
                        
                    } // END HSTACK
                    .padding(.horizontal, 30.0)
                    .padding(.vertical)
                } //end zstack
                
            } // scroll
            .navigationTitle("Favorites")
            .accessibilityLabel("Favorites View")
            
        } // navigation
    } // BODY
}

#Preview {
    Favorites()
}

