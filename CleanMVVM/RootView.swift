//
//  ContentView.swift
//  CleanMVVM
//
//  Created by Anatolii Semenchuk on 22.04.2026.
//

import SwiftUI
import Factory

struct RootView: View {
    @Injected(\.navigationService) private var navigation
    
    private var navigationService: NavigationService {
        navigation as! NavigationService
    }
    
    var body: some View {
        NavigationStack(path: Bindable(navigationService).path) {
            PageBootstrapper.shared.view(for: FeedViewModel.self)
                .navigationDestination(for: IdentifiableView.self) { item in
                    item
                }
        }
        .sheet(item: Bindable(navigationService).sheet) { item in
            item
        }
    }
}


#Preview {
    let _ = {
        PageBootstrapper.shared.bootstrap()
    }()
    
    RootView()
}

