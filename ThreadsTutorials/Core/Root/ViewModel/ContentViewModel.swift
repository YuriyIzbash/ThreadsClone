//
//  ContentViewModel.swift
//  ThreadsTutorials
//
//  Created by YURIY IZBASH on 23. 9. 24.
//

import Foundation
import FirebaseAuth
import Combine

class ContentViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        setupSubscribers()
    }
    
    private func setupSubscribers() {
      AuthService.shared.$userSession.sink { [weak self] userSession in
            self?.userSession = userSession
        }
      .store(in: &cancellables)
    }
}
