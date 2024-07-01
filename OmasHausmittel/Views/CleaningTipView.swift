//
//  CleaningTipView.swift
//  OmasHausmittel
//
//  Created by Siarhei Wehrhahn on 01.07.24.
//

import SwiftUI

struct CleaningTipView: View {
    @EnvironmentObject private var viewModel: ItemViewModel
    
    var body: some View {
        NavigationView {
            List(viewModel.cleaningTips) { item in
                Button(action: {
                    viewModel.index = item.index
                    viewModel.isDetailViewActive = true
                }) {
                    Text(item.title)
                }
            }
            .navigationTitle("Reinigungstipps")
            .sheet(isPresented: $viewModel.isDetailViewActive) {
                DetailView(item: viewModel.cleaningTips[viewModel.index])
            }
        }
    }
}

#Preview {
    CleaningTipView()
        .environmentObject(ItemViewModel())
}
