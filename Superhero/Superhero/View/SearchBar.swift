//
//  SearchBar.swift
//  Superhero
//
//  Created by Kamyar Dabiri on 8/2/21.
//

import SwiftUI

struct SearchBar: View {
    @Binding var serchText: String
    @Binding var searching: Bool
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color("SearchBar"))
            HStack {
                Image(systemName: "magnifyingglass")
                TextField("Search...", text: $serchText) {
                    startedSearching in
                    if startedSearching {
                        withAnimation {
                            searching = true
                            
                        }
                    }
                } onCommit: {
                    withAnimation {
                        searching = false
                    }
                }
                    
            }
            .foregroundColor(Color.gray)
            .padding()
        }
        .frame(height: 40)
        .cornerRadius(13)
        .padding(7)
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(serchText: .constant(""), searching: .constant(false))
    }
}
