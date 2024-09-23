//
//  CircularProfileImageView.swift
//  ThreadsTutorials
//
//  Created by YURIY IZBASH on 22. 9. 24.
//

import SwiftUI

struct CircularProfileImageView: View {
    var body: some View {
        Image(systemName: "person")
            .resizable()
            .scaledToFill() 
            .frame(width: 40, height: 40)
            .clipShape(Circle())    }
}

#Preview {
    CircularProfileImageView()
}
