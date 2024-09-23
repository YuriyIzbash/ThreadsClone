//
//  ThreadCell.swift
//  ThreadsTutorials
//
//  Created by YURIY IZBASH on 22. 9. 24.
//

import SwiftUI

struct ThreadCell: View {
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 12) {
                CircularProfileImageView()
                
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Text("Thread Name")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Spacer()
                        
                        Text("10m")
                            .font(.caption)
                            .foregroundColor(Color(.systemGray3))
                        
                        Button(action: {}) {
                            Image(systemName: "ellipsis")
                                .foregroundStyle(Color(.darkGray))
                        }
                        
                    }
                    
                    Text("Thread Description")
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    
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
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "paperplane")
                                
                        }
                    }
                    .foregroundStyle(.black)
                    .padding(.vertical, 8)
                }
            }
            Divider()
        }
        .padding()
    }
}

#Preview {
    ThreadCell()
}
