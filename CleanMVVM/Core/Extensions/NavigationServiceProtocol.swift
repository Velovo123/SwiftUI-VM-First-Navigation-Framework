//
//  NavigationServiceProtocol.swift
//  CleanMVVM
//
//  Created by Anatolii Semenchuk on 23.04.2026.
//

protocol NavigationServiceProtocol {
    func push<VM: BaseViewModel>(_ viewModel: VM.Type, params: Any?)
    func present<VM: BaseViewModel>(_ viewModel: VM.Type, params: Any?)
    func pop()
    func dismiss()
}

extension NavigationServiceProtocol {
    func push<VM: BaseViewModel>(_ viewModel: VM.Type) {
        push(viewModel, params: nil)
    }
    
    func present<VM: BaseViewModel>(_ viewModel: VM.Type) {
        present(viewModel, params: nil)
    }
}
