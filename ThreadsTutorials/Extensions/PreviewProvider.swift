//
//  PreviewProvider.swift
//  ThreadsTutorials
//
//  Created by YURIY IZBASH on 25. 9. 24.
//

import SwiftUI
import FirebaseCore

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.shared
    }
}

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    let user = User(id: NSUUID().uuidString, fullName: "Sergiy Chupita", email: "djfjf@sdfsdf.com", userName: "chupita")
    
    let thread = Thread(ownerUid: "1234567890", caption: "SwiftUI Tutorial - Hello, World! -Hello, Bill! -Hello, Vova!", timestamp: Timestamp(), likes: 1)
}
