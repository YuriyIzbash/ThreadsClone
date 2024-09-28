//
//  RegistrationViewModel.swift
//  ThreadsTutorials
//
//  Created by YURIY IZBASH on 23. 9. 24.
//

import Foundation

class RegistrationViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var fullName = ""
    @Published var userName = ""
    
    @MainActor
    func createUser() async throws {
       try await AuthService.shared.createUser (
        withEmail: email,
        password: password,
        fullName: fullName,
        userName: userName
       )
    }
}
