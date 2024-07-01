//
//  HealthTipView.swift
//  OmasHausmittel
//
//  Created by Siarhei Wehrhahn on 01.07.24.
//

import SwiftUI

struct HealthTipView: View {
    @EnvironmentObject private var viewModel: ItemViewModel
    
    var body: some View {
            NavigationView {
                List(viewModel.healthTips) { item in
                    Button(action: {
                        viewModel.index = item.index
                        viewModel.isDetailViewActive = true
                    }) {
                        Text(item.title)
                    }
                }
                .navigationTitle("Gesundheitstipps")
                .sheet(isPresented: $viewModel.isDetailViewActive) {
                    DetailView(item: viewModel.healthTips[viewModel.index])
                }
            }
        }
    }

#Preview {
    HealthTipView()
        .environmentObject(ItemViewModel())
}
