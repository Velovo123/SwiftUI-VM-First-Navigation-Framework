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
        navigationService.push(DetailViewModel.self, params: id)
    }
    
    func userDidTapFilters() {
        navigationService.present(FiltersViewModel.self)
    }
}
