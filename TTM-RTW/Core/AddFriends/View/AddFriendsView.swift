//
//  AddFriendsView.swift
//  TTM-RTW
//
//  Created by Tanaka Bere on 28/02/2024.
//

import SwiftUI

struct AddFriendsView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(0...10, id: \.self) { user in
                        VStack {
                        UserCell()
                            
                        Divider()
                    }
                        .padding(.vertical, 4)
                }
            }
            }
            .navigationTitle("TTM")
            .navigationBarTitleDisplayMode(.inline)
            .searchable(text: $searchText)
        }
    }
}

struct AddFriendsView_Preciews: PreviewProvider {
    static var previews: some View {
        AddFriendsView()
    }
}
