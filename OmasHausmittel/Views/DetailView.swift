//
//  DetailView.swift
//  OmasHausmittel
//
//  Created by Siarhei Wehrhahn on 01.07.24.
//

import SwiftUI

struct DetailView: View {
    let item: Item

    var body: some View {
        VStack {
            Text(item.title)
                .font(.largeTitle)
                .padding()
            Text(item.description)
                .padding()
            Spacer()
        }
    }
}

#Preview {
    DetailView(item: Item(title: "Seife", description: "Seife", index: 0))
}
