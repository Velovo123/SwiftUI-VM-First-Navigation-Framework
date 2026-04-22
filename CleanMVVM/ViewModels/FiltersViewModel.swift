//
//  FiltersViewModel.swift
//  CleanMVVM
//
//  Created by Anatolii Semenchuk on 22.04.2026.
//

import Foundation

@Observable
final class FiltersViewModel : BaseViewModel {
    
    func dismiss() {
        NavigationService.shared.dismiss()
    }
}
