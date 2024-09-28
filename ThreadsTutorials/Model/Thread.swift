//
//  Thread.swift
//  ThreadsTutorials
//
//  Created by YURIY IZBASH on 28. 9. 24.
//

import Foundation
import FirebaseCore
import FirebaseFirestore

struct Thread: Identifiable, Codable {
    @DocumentID var threadId: String?
    let ownerUid: String
    let caption: String
    let timestamp: Timestamp
    var likes: Int
    
    var id: String {
        return threadId ?? NSUUID().uuidString
    }
    
    var user: User?
}
