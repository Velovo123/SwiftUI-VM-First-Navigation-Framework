//
//  ContentView.swift
//  CleanMVVM
//
//  Created by Anatolii Semenchuk on 22.04.2026.
//

import SwiftUI

struct RootView: View {
    var navigation = NavigationService.shared
    
    var body: some View {
        NavigationStack(path: Bindable(navigation).path) {
            PageBootstrapper.shared.view(for: FeedViewModel.self)
                .navigationDestination(for: IdentifiableView.self) { item in
                    item
                }
        }
        .sheet(item: Bindable(navigation).sheet) { item in
            item
        }
    }
}


#Preview {
    let _ = {
        DiContainer.shared.bootstrap()
        PageBootstrapper.shared.bootstrap()
    }()
    
    RootView()
}

