//
//  AuthService.swift
//  ThreadsTutorials
//
//  Created by YURIY IZBASH on 23. 9. 24.
//

import Firebase
import FirebaseAuth

class AuthService {
    
    static let shared = AuthService()
    
    @MainActor
    func login(withEmail email: String, password: String) async throws {
        
    }
    
    @MainActor
    func createUser(withEmail email: String, password: String, fullName: String, userName: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            print("DEBUG: Created user: \(result.user.uid)")
        } catch {
            print("DEBUG: Failed to create user: \(error.localizedDescription)")
        }
        
    }
}
