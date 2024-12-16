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
                        
                        HStack{
                            Image("acotar")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 62, height: 100)
                                .cornerRadius(5)
                            Image("acowar")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 62, height: 100)
                                .cornerRadius(5)
                            Image("acomaf")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 62, height: 100)
                                .cornerRadius(5)
                            Image("sorcery")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 62, height: 100)
                                .cornerRadius(5)
                            Image("red")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 62, height: 100)
                                .cornerRadius(5)
                            
                        } // HSTACK
                        .padding(.bottom, 10.0)
                        HStack(){
                            Text("10%")
                                .font(.caption)
                                .fontWeight(.light)
                            Spacer()
                            Text("1/10")
                                .font(.caption)
                                .fontWeight(.light)
                            Image(systemName: "flag")
                                .font(.system(size: 12))
                        } // hstack
                        ProgressView(value: 10, total: 100)
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
                        
                        HStack{
                            Image("captive")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 62, height: 100)
                                .cornerRadius(5)
                            Image("sixofcrows")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 62, height: 100)
                                .cornerRadius(5)
                            Image("crooked")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 62, height: 100)
                                .cornerRadius(5)
                            Image("latte")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 62, height: 100)
                                .cornerRadius(5)
                            Image("fate")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 62, height: 100)
                                .cornerRadius(5)
                        } // HSTACK
                        .padding(.bottom, 10.0)
                        HStack(){
                            Text("10%")
                                .font(.caption)
                                .fontWeight(.light)
                            Spacer()
                            Text("1/10")
                                .font(.caption)
                                .fontWeight(.light)
                            Image(systemName: "flag")
                                .font(.system(size: 12))
                        } // hstack
                        ProgressView(value: 10, total: 100)
                    } // end vstack
                    .padding(.horizontal, 30.0)
                } // end zstack
            } // scrollview
            
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "plus")
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

