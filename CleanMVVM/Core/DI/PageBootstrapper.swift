//
//  PageBootstrapper.swift
//  CleanMVVM
//
//  Created by Anatolii Semenchuk on 22.04.2026.
//

import SwiftUI

final class PageBootstrapper {
    
    static let shared = PageBootstrapper()
    private init() {}
    
    private var registry: [ObjectIdentifier: (Any?) -> AnyView] = [:]
    
    func register<VM: BaseViewModel>(_ type: VM.Type, factory: @escaping (VM) -> AnyView) {
        registry[ObjectIdentifier(type)] = { params in
            let vm = VM(params: params)
            return AnyView(factory(vm).lifecycle(vm))
        }
    }
    
    func view<VM>(for viewModel: VM.Type, params: Any? = nil) -> AnyView {
        let key = ObjectIdentifier(viewModel)
        guard let factory = registry[key] else {
            fatalError("PageBootstrapper: \(VM.self) is not registered")
        }
        return factory(params)
    }
}

extension PageBootstrapper {
    func bootstrap() {
        register(FeedViewModel.self) { vm in
            AnyView(FeedView(viewModel: vm))
        }
        register(DetailViewModel.self) { vm in
            AnyView(DetailView(viewModel: vm))
        }
        register(FiltersViewModel.self) { vm in
            AnyView(FiltersView(viewModel: vm))
        }
    }
}
