//
//  LifecycleExtensions.swift
//  CleanMVVM
//
//  Created by Anatolii Semenchuk on 22.04.2026.
//

import SwiftUI

extension View {
    func lifecycle<VM: BaseViewModel>(_ viewModel: VM) -> some View {
        modifier(ViewModelLifecycle(viewModel: viewModel))
    }
}
