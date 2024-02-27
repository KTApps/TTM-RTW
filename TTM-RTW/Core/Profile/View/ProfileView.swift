//
//  ProfileView.swift
//  TTM-RTW
//
//  Created by Tanaka Bere on 28/02/2024.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedFilter: ProfilePostFilter = .posts
    @Namespace var animation
    
    // private var filterBarWidth: CGFloat {
    //    let count = CGFloat(ProfilePostFilter.allCases.count)
    //    return UIScreen.main.bounds.width / count - 16 }
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                // bio and stats
                VStack(spacing: 20) {
                    HStack(alignment: .top) {
                        VStack (alignment: .leading, spacing: 12) {
                            // full name and username
                            VStack(alignment: .leading, spacing: 4) {
                                Text("User Name")
                                    .font(.title2)
                                    .fontWeight(.semibold)
                                
                                Text("UserName")
                                    .font(.subheadline)
                                
                            }
                            
                            Text("Bio")
                            
                            Text("50 friends")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        CircularProfileImageView()
                    }
                    
                    Button {
                        
                    } label: {
                        Text("Add Friend")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .frame(width: 352, height: 32)
                            .background(.black)
                            .cornerRadius(8)
                    }
                    
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Featured Playlists")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        
                        // create a view for playlist cards that can be called here. Using Spotify's API, can we call the variable album cover and link it to their account
                        HStack {
                            Image("AlbumCover")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 60)
                            Image("AlbumCover")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 60)
                            Image("AlbumCover")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 60)
                            Image("AlbumCover")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 60)
                            Image("AlbumCover")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 60)
                            
                        }
                    }
                    .padding(.horizontal)
                    
                    //user content list view - calendar in future
                    VStack {
                        HStack {
                            ForEach(ProfilePostFilter.allCases) { filter in
                                VStack {
                                    Text(filter.title)
                                        .font(.subheadline)
                                        .fontWeight(selectedFilter == filter ? .semibold : .regular)
                                    
                                    if selectedFilter == filter {
                                        Rectangle()
                                            .foregroundColor(.black)
                                            .frame(width: 180, height: 1)
                                            .matchedGeometryEffect(id: "item", in: animation)
                                    } else {
                                        Rectangle()
                                            .foregroundColor(.clear)
                                            .frame(width: 180, height: 1)
                                    }
                                }
                                .onTapGesture {
                                    withAnimation(.spring()) {
                                        selectedFilter = filter
                                    }
                                }
                            }
                        }
                        LazyVStack {
                            ForEach(0...10, id: \.self) { post in
                                PostCell()
                            }
                        }
                    }
                    .padding(.vertical, 8)
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        AuthService.shared.signOut()
                    } label: {
                        Image(systemName: "line.3.horizontal")
                    }
                    .foregroundColor(.black)
                }
            }
            .padding(.horizontal)
        }
    }
}
      

struct ProfileView_Preciews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
