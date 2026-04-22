//
//  FeedView.swift
//  CleanMVVM
//
//  Created by Anatolii Semenchuk on 22.04.2026.
//

import SwiftUI

struct FeedView: View {
    @State var viewModel = FeedViewModel()
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Feed")
                .font(.largeTitle)
            
            Button("Open Detail") {
                viewModel.userDidSelectPost(id: "post-123")
            }
            
            Button("Open Filters") {
                viewModel.userDidTapFilters()
            }
        }
        .navigationTitle("Feed")
    }
}

#Preview {
    FeedView()
}
