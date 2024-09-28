//
//  CreateThreadViewModel.swift
//  ThreadsTutorials
//
//  Created by YURIY IZBASH on 28. 9. 24.
//

import Foundation
import Firebase
import FirebaseAuth
import FirebaseFirestore

class CreateThreadViewModel: ObservableObject {
    
    func uploadThread(caption: String) async throws {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        let thread = Thread(ownerUid: uid, caption: caption, timestamp: Timestamp(), likes: 0)
        try await ThreadService.uploadThread(thread)
    }
}
