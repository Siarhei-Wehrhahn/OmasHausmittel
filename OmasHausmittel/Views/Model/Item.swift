//
//  Item.swift
//  OmasHausmittel
//
//  Created by Siarhei Wehrhahn on 01.07.24.
//

import Foundation

struct Item: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let index: Int
}
