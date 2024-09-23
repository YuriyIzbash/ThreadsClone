//
//  FeedView.swift
//  ThreadsTutorials
//
//  Created by YURIY IZBASH on 21. 9. 24.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false){
                LazyVStack {
                    ForEach(0 ... 10, id: \.self) { thread in
                        ThreadCell()
                    }
                }
            }
            .refreshable {
                print("DEBUG: Refreshing")
            }
            .navigationTitle("Threads")
            .navigationBarTitleDisplayMode(.inline)
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    
                } label: {
                    Image(systemName: "arrow.counterclockwise")
                        .foregroundStyle(.black)
                }
            }
        }
    }
}

#Preview {
    FeedView()
}
