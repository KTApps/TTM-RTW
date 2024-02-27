//
//  FeedView.swift
//  TTM-RTW
//
//  Created by Tanaka Bere on 28/02/2024.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    ForEach(0...10, id: \.self) { post in
                        PostCell()
                    }
                }
            }
            .refreshable {
                print("DEBUG: Refresh Feed")
            }
                .navigationTitle("TTM")
                .navigationBarTitleDisplayMode(.inline)
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                HStack(spacing: 1) {
                    NavigationLink {
                        ActivityView()
                    } label: {
                        Image(systemName: "heart")
                            .foregroundColor(.black)
                            .font(.footnote)
                            .fontWeight(.semibold)
                    }
                    
                    NavigationLink {
                        AddFriendsView()
                    } label: {
                        Image(systemName: "person.fill.badge.plus")
                            .foregroundColor(.black)
                            .font(.footnote)
                    }
                }
            }
        }
    }
}

struct FeedView_Preciews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
        FeedView()
    }
}
}
