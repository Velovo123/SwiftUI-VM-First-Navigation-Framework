//
//  CleanMVVMApp.swift
//  CleanMVVM
//
//  Created by Anatolii Semenchuk on 22.04.2026.
//

import SwiftUI

@main
struct CleanMVVMApp: App {
    
    init() {
        DiContainer.shared.bootstrap()
        PageBootstrapper.shared.bootstrap()
    }
    
    var body: some Scene {
        WindowGroup {
            RootView()
        }
    }
}
