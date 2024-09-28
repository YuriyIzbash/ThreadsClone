//
//  ExploreViewModel.swift
//  ThreadsTutorials
//
//  Created by YURIY IZBASH on 25. 9. 24.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        Task { try await fetchUsers() }
    }
    
    @MainActor
    private func fetchUsers() async throws {
        self.users = try await UserService.fetchUsers()
    }
    
}
