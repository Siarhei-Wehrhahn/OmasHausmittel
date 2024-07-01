//
//  ClothingTipView.swift
//  OmasHausmittel
//
//  Created by Siarhei Wehrhahn on 01.07.24.
//

import SwiftUI

struct ClothingTipView: View {
    @EnvironmentObject private var viewModel: ItemViewModel
    
    var body: some View {
        NavigationView {
            List(viewModel.clothingTips) { item in
                Button(action: {
                    viewModel.index = item.index
                    viewModel.isDetailViewActive = true
                }) {
                    Text(item.title)
                }
            }
            .navigationTitle("Kleidungstipps")
            .sheet(isPresented: $viewModel.isDetailViewActive) {
                DetailView(item: viewModel.clothingTips[viewModel.index])
            }
        }
    }
}
#Preview {
    ClothingTipView()
        .environmentObject(ItemViewModel())
}
