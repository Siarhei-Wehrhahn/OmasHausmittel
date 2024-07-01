//
//  GrandmotherView.swift
//  OmasHausmittel
//
//  Created by Siarhei Wehrhahn on 01.07.24.
//

import SwiftUI

struct GrandmotherView: View {
    @EnvironmentObject private var viewModel: ItemViewModel
    
    var body: some View {
        NavigationView {
            List(viewModel.householdTips) { item in
                Button(action: {
                    viewModel.index = item.index
                    viewModel.isDetailViewActive = true
                }) {
                    Text(item.title)
                }
            }
            .navigationTitle("Haushaltstipps")
            .sheet(isPresented: $viewModel.isDetailViewActive) {
                DetailView(item: viewModel.householdTips[viewModel.index])
            }
        }
    }
}

#Preview {
    GrandmotherView()
        .environmentObject(ItemViewModel())
}
