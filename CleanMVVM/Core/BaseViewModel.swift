//
//  BaseViewModel.swift
//  CleanMVVM
//
//  Created by Anatolii Semenchuk on 22.04.2026.
//

class BaseViewModel {
    
    required init(params: Any? = nil) {}
    
    func onAppear() {}
    func onDisappear() {}
    func task() async {}
}
