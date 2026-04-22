//
//  IdentifiableView.swift
//  CleanMVVM
//
//  Created by Anatolii Semenchuk on 22.04.2026.
//

import SwiftUI

struct IdentifiableView: Identifiable, Hashable, View {
    let id: UUID
    private let content: AnyView
    
    init(_ view: AnyView) {
        self.id = UUID()
        self.content = view
    }
    
    var body: some View {
        content
    }
    
    static func == (lhs: IdentifiableView, rhs: IdentifiableView) -> Bool {
        lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
