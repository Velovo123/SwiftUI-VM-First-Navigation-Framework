//
//  DetailView.swift
//  CleanMVVM
//
//  Created by Anatolii Semenchuk on 22.04.2026.
//

import SwiftUI

struct DetailView: View {
    @State var viewModel: DetailViewModel
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Detail")
                .font(.largeTitle)
            Text("Post ID: \(viewModel.postId)")
                .foregroundColor(.secondary)
            
            Button("Go Back") {
                viewModel.goBack()
            }
        }
        .navigationTitle("Detail")
    }
}

#Preview {
    DetailView(viewModel: DetailViewModel(params: "preview-123"))
}
