//
//  Inject.swift
//  CleanMVVM
//
//  Created by Anatolii Semenchuk on 22.04.2026.
//

import Foundation

@propertyWrapper
struct Inject<T> {
    
    private var service: T
    
    init() {
        self.service = DiContainer.shared.resolve(T.self)
    }
    
    var wrappedValue: T {
        get { service }
    }
}
