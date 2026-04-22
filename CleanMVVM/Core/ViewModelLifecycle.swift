//
//  ViewModelLifecycle.swift
//  CleanMVVM
//
//  Created by Anatolii Semenchuk on 22.04.2026.
//

import SwiftUI

struct ViewModelLifecycle<VM: BaseViewModel>: ViewModifier {
    let viewModel: VM
    
    func body(content: Content) -> some View {
        content
            .onAppear { viewModel.onAppear() }
            .onDisappear { viewModel.onDisappear() }
            .task { await viewModel.task() }
    }
}
