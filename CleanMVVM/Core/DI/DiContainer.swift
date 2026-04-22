//
//  DiContainer.swift
//  CleanMVVM
//
//  Created by Anatolii Semenchuk on 22.04.2026.
//

import Foundation

final class DiContainer {
    
    static let shared = DiContainer()
    private init() {}
    
    
    private var singletonFactories: [ObjectIdentifier: () -> Any] = [:]
    private var singletonInstances: [ObjectIdentifier: Any] = [:]
    private var transientFactories:  [ObjectIdentifier: () -> Any] = [:]
    
    
    func singleton<T>(_ type: T.Type, factory: @escaping () -> T) {
        singletonFactories[ObjectIdentifier(type)] = factory
    }
    
    func transient<T>(_ type: T.Type, factory: @escaping () -> T) {
        transientFactories[ObjectIdentifier(type)] = factory
    }
    

    func resolve<T>(_ type: T.Type) -> T {
        let key = ObjectIdentifier(type)
        
        if let factory = singletonFactories[key] {
            if let cached = singletonInstances[key] as? T {
                return cached
            }
            let instance = factory() as! T
            singletonInstances[key] = instance
            return instance
        }
        
        if let factory = transientFactories[key] {
            return factory() as! T
        }
        
        fatalError("DiContainer: \(T.self) is not registered")
    }
}


extension DiContainer {
    func bootstrap() {
        
    }
}
