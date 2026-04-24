//
//  DiContainer.swift
//  CleanMVVM
//
//  Created by Anatolii Semenchuk on 24.04.2026.
//

import Factory

extension Container {
    var navigationService: Factory<NavigationServiceProtocol> {
        self { MainActor.assumeIsolated { NavigationService() } }.singleton
    }
}
