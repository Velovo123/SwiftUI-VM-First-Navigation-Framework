//
//  DetailViewModel.swift
//  CleanMVVM
//
//  Created by Anatolii Semenchuk on 22.04.2026.
//

import Foundation


@Observable
final class DetailViewModel : BaseViewModel {
    
    let postId: String
    
    required init(params: Any? = nil) {
        self.postId = params as? String ?? ""
        super.init(params: params)
    }
    
    
    func goBack() {
        NavigationService.shared.pop()
    }
}
