//
//  NavigationService.swift
//  CleanMVVM
//
//  Created by Anatolii Semenchuk on 22.04.2026.
//

import SwiftUI
internal import Combine

enum NavAction {
    case push(AnyView)
    case present(AnyView)
    case pop
    case dismiss
}


@Observable
final class NavigationService : NavigationServiceProtocol {
    var path = NavigationPath()
    var sheet: IdentifiableView? = nil
    
    func push<VM>(_ viewModel: VM.Type, params: Any? = nil) {
        let view = PageBootstrapper.shared.view(for: viewModel, params: params)
        path.append(IdentifiableView(view))
    }
    
    func present<VM>(_ viewModel: VM.Type, params: Any? = nil) {
        let view = PageBootstrapper.shared.view(for: viewModel, params: params)
        sheet = IdentifiableView(view)
    }
    
    func pop() {
        guard !path.isEmpty else { return }
        path.removeLast()
    }
    
    func dismiss() {
        sheet = nil
    }
}
