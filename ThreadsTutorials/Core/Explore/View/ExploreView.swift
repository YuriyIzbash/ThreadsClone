//
//  ExploreView.swift
//  ThreadsTutorials
//
//  Created by YURIY IZBASH on 21. 9. 24.
//

import SwiftUI

struct ExploreView: View {
    @State var searchText = ""
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(0 ... 10, id: \.self) {user in
                        VStack {
                            UserCell()
                            
                            Divider()
                        }
                        .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Search")
            .searchable(text: $searchText, prompt: Text("Search"))
            
        }
    }
}

#Preview {
    ExploreView()
}
