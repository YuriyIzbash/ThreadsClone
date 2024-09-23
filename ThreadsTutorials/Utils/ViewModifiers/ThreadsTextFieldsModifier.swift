//
//  ThreadsTextFieldsModifier.swift
//  ThreadsTutorials
//
//  Created by YURIY IZBASH on 21. 9. 24.
//

import SwiftUI
struct ThreadsTextFieldsModifierTests: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal, 24)
    }
}
