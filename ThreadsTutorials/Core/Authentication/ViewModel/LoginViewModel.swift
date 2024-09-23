//
//  LoginViewModel.swift
//  ThreadsTutorials
//
//  Created by YURIY IZBASH on 23. 9. 24.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    @MainActor
    func login() async throws {
        try await AuthService.shared.login(withEmail: email, password: password
       )
    }
}
