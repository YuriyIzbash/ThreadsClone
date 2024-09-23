//
//  ProfileThreadFilter.swift
//  ThreadsTutorials
//
//  Created by YURIY IZBASH on 22. 9. 24.
//

import Foundation

enum ProfileThreadFilter: Int, CaseIterable, Identifiable {
    case threads
    case replies
    
    var title: String {
        switch self {
        case .threads: return "Threads"
        case .replies: return "Replies"
        }
    }
    var id: Int { return self.rawValue}
}
