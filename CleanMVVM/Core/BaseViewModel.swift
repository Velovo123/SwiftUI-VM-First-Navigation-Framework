//
//  BaseViewModel.swift
//  CleanMVVM
//
//  Created by Anatolii Semenchuk on 22.04.2026.
//

import Factory

class BaseViewModel {
    @Injected(\.navigationService) var navigationService: NavigationServiceProtocol
    
    required init(params: Any? = nil) {}
    
    func onAppear() {}
    func onDisappear() {}
    func task() async {}
}
