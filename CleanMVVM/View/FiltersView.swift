//
//  FiltersView.swift
//  CleanMVVM
//
//  Created by Anatolii Semenchuk on 22.04.2026.
//

import SwiftUI

struct FiltersView: View {
    @State var viewModel = FiltersViewModel()
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Filters")
                .font(.largeTitle)
            
            Button("Close") {
                viewModel.dismiss()
            }
        }
        .navigationTitle("Filters")
    }
}
