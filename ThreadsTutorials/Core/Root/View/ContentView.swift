//
//  ContentView.swift
//  ThreadsTutorials
//
//  Created by YURIY IZBASH on 21. 9. 24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        Group {
        if viewModel.userSession != nil {
            ThreadsTabView()
        } else {
            LoginView()
        }
        }
    }
}

#Preview {
    ContentView()
}
