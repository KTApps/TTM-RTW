//
//  UserCell.swift
//  TTM-RTW
//
//  Created by Tanaka Bere on 28/02/2024.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            CircularProfileImageView()
            
            VStack(alignment: .leading) {
                Text("username")
                    .fontWeight(.semibold)
                
                Text("User Name")
            }
            .font(.footnote)
            
            Spacer()
            
            Text("Add Friend")
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 100, height: 32)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray4), lineWidth: 1)
                }
        }
        .padding(.horizontal)
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}
