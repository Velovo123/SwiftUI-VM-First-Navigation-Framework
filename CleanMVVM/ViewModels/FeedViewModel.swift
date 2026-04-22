//
//  FeedViewModel.swift
//  CleanMVVM
//
//  Created by Anatolii Semenchuk on 22.04.2026.
//

import Foundation

@Observable
final class FeedViewModel : BaseViewModel {
    
    func userDidSelectPost(id: String) {
        NavigationService.shared.push(DetailViewModel.self, params: id)
    }
    
    func userDidTapFilters() {
        NavigationService.shared.present(FiltersViewModel.self)
    }
}
