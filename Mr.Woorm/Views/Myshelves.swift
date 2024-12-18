//
//  Myshelves.swift
//  Mr.Woorm
//
//  Created by Laura Bracale on 14/12/24.
//

import SwiftUI

struct Myshelves: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationStack {
            ScrollView {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 365, height: 210)
                        .foregroundStyle(Color(colorScheme == .light ? .white : .systemGray6))
                        .shadow(radius: 3,x: 2,y: 2)
                    
                    VStack(alignment: .leading){
                        Text("Romance >")
                            .font(.body)
                            .padding(.bottom, 5.0)
                            .accessibilityLabel("Romance shelf")
                        
                        HStack{
                            Image("acotar")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 62, height: 100)
                                .cornerRadius(5)
                                .accessibilityLabel("A Court of Thorns and Roses cover")
                            
                            Image("acowar")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 62, height: 100)
                                .cornerRadius(5)
                                .accessibilityLabel("A Court of Wings and Ruin cover")
                            
                            Image("acomaf")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 62, height: 100)
                                .cornerRadius(5)
                                .accessibilityLabel("A Court of Mist and Fury cover")
                            
                            Image("sorcery")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 62, height: 100)
                                .cornerRadius(5)
                                .accessibilityLabel("Sorcery of Thorns cover")
                            
                            Image("red")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 62, height: 100)
                                .cornerRadius(5)
                                .accessibilityLabel("Red, White and Royal Blue cover")
                            
                        } // HSTACK
                        .padding(.bottom, 10.0)
                        HStack(){
                            Text("10%")
                                .font(.caption)
                                .fontWeight(.light)
                                .accessibilityLabel("Shelf progress: 10% completed")
                            
                            Spacer()
                            Text("1/10")
                                .font(.caption)
                                .fontWeight(.light)
                                .accessibilityLabel("1 book read out of 10")
                            
                            Image(systemName: "flag")
                                .font(.system(size: 12))
                                .accessibilityLabel("Progress milestone flag")
                        } // hstack
                        ProgressView(value: 10, total: 100)
                            .accessibilityLabel("Reading progress bar for the Romance shelf")
                            .accessibilityValue("10 percent complete")
                    } // end vstack
                    .padding(.horizontal, 30.0)
                } // end zstack
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 365, height: 210)
                        .foregroundStyle(Color(colorScheme == .light ? .white : .systemGray6))
                        .shadow(radius: 3,x: 2,y: 2)
                    
                    VStack(alignment: .leading){
                        Text("Fantasy!!! >")
                            .font(.body)
                            .padding(.bottom, 5.0)
                            .accessibilityLabel("Fantasy shelf with three esclamation marks")
                        
                        HStack{
                            Image("captive")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 62, height: 100)
                                .cornerRadius(5)
                                .accessibilityLabel("Captive Prince cover")
                            Image("sixofcrows")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 62, height: 100)
                                .cornerRadius(5)
                                .accessibilityLabel("Six of crows cover")
                            Image("crooked")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 62, height: 100)
                                .cornerRadius(5)
                                .accessibilityLabel("Crooked Kingdom cover")
                            Image("latte")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 62, height: 100)
                                .cornerRadius(5)
                                .accessibilityLabel("Latte and legends cover")
                            Image("fate")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 62, height: 100)
                                .cornerRadius(5)
                                .accessibilityLabel("Emily Wilde's Encyclopaedia of Faeries cover")
                        } // HSTACK
                        .padding(.bottom, 10.0)
                        HStack(){
                            Text("10%")
                                .font(.caption)
                                .fontWeight(.light)
                                .accessibilityLabel("Shelf progress: 10% completed")
                            Spacer()
                            Text("1/10")
                                .font(.caption)
                                .fontWeight(.light)
                                .accessibilityLabel("1 book read out of 10")
                            
                            Image(systemName: "flag")
                                .font(.system(size: 12))
                                .accessibilityLabel("Progress milestone flag")
                        } // hstack
                        ProgressView(value: 10, total: 100)
                            .accessibilityLabel("Reading progress bar for the Romance shelf")
                            .accessibilityValue("10 percent complete")
                    } // end vstack
                    .padding(.horizontal, 30.0)
                } // end zstack
            } // scrollview
            
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "plus")
                            .accessibilityLabel("Add a new shelf")
                    })
                } // toolbaritem
            }
        .navigationTitle("My Shelves")
        } // navigation
    } //body
}

#Preview {
    Myshelves()
}

