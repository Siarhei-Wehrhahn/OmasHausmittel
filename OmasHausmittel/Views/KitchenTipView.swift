//
//  KitchenTipView.swift
//  OmasHausmittel
//
//  Created by Siarhei Wehrhahn on 01.07.24.
//

import SwiftUI

struct KitchenTipView: View {
    @EnvironmentObject private var viewModel: ItemViewModel
    
    var body: some View {
        NavigationView {
            List(viewModel.kitchenTips) { item in
                Button(action: {
                    viewModel.index = item.index
                    viewModel.isDetailViewActive = true
                }) {
                    Text(item.title)
                }
            }
            .navigationTitle("Küchentipps")
            .sheet(isPresented: $viewModel.isDetailViewActive) {
                DetailView(item: viewModel.kitchenTips[viewModel.index])
            }
        }
    }
}

#Preview {
    KitchenTipView()
        .environmentObject(ItemViewModel())
}
