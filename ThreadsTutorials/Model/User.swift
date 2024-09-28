//
//  User.swift
//  ThreadsTutorials
//
//  Created by YURIY IZBASH on 24. 9. 24.
//

import Foundation

struct User: Identifiable, Codable, Hashable {
    let id: String
    let fullName: String
    let email: String
    let userName: String
    var profileImageUrl: String?
    var bio: String?
}
