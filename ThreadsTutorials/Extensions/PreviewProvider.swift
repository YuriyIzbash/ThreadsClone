//
//  PreviewProvider.swift
//  ThreadsTutorials
//
//  Created by YURIY IZBASH on 25. 9. 24.
//

import SwiftUI

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.shared
    }
}

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    let user = User(id: NSUUID().uuidString, fullName: "Sergiy Chupita", email: "djfjf@sdfsdf.com", userName: "chupita")
}
