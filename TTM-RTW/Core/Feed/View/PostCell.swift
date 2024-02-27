//
//  PostCell.swift
//  TTM-RTW
//
//  Created by Tanaka Bere on 28/02/2024.
//

import SwiftUI

struct PostCell: View {
    var body: some View {
        VStack {
            HStack {
                headerMetaData()
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "ellipsis")
                        .foregroundColor(Color(.darkGray))
                }
            }
                HStack {
                    
                    Image("AlbumCover")
                    
                    
                    Text("Caption goes here!")
                        .font(.footnote)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                
                HStack(spacing: 16) {
                    Button {
                        
                    } label: {
                        Image(systemName: "heart")
                    }
                    Button {
                        
                    } label: {
                        Image(systemName: "bubble.right")
                    }
                    Button {
                        
                    } label: {
                        Image(systemName: "arrow.rectanglepath")
                    }
                }
                .foregroundColor(.black)
                .padding(.vertical, 1)
                .frame(maxWidth: .infinity, alignment: .trailing)
            
            Divider()
            }
        .padding(5)
        }
    }





    
private func headerMetaData() -> some View {
    HStack(spacing: 8) {
        CircularProfileImageView()

        Text("Tanaka")
                .font(.footnote)
                .fontWeight(.semibold)
        }
    }


struct PostCellView_Preciews: PreviewProvider {
    static var previews: some View {
        PostCell()
    }
}
