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
    @DocumentID var threadID: String?
    let ownerUid: String
    let caption: String
    let timestamp: Timestamp
    var likes: Int
    var id: String {
        return threadID ?? UUID().uuidString }
    
    var user: User?
}
