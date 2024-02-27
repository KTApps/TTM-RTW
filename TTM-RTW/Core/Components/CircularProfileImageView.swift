//
//  CircularProfileImageView.swift
//  TTM-RTW
//
//  Created by Tanaka Bere on 28/02/2024.
//

import SwiftUI

struct CircularProfileImageView: View {
    var body: some View {
        Image("TTM-LG")
            .resizable()
            .scaledToFill()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
    }
}

struct CircularProfileImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularProfileImageView()
    }
}
