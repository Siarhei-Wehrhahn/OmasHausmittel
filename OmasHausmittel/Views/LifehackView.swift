//
//  LifehackView.swift
//  OmasHausmittel
//
//  Created by Siarhei Wehrhahn on 01.07.24.
//

import SwiftUI

struct LifehackView: View {
    @EnvironmentObject private var viewModel: ItemViewModel
    
    var body: some View {
        NavigationView {
            List(viewModel.lifeHacks) { item in
                Button(action: {
                    viewModel.index = item.index
                    viewModel.isDetailViewActive = true
                }) {
                    Text(item.title)
                }
            }
            .navigationTitle("Lifehacks")
            .sheet(isPresented: $viewModel.isDetailViewActive) {
                DetailView(item: viewModel.lifeHacks[viewModel.index])
            }
        }
    }
}

#Preview {
    LifehackView()
        .environmentObject(ItemViewModel())
}
