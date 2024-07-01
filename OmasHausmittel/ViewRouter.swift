//
//  ViewRouter.swift
//  OmasHausmittel
//
//  Created by Siarhei Wehrhahn on 30.06.24.
//

import SwiftUI

enum Page {
    case splash
    case home
}

class ViewRouter: ObservableObject {
    @Published var currentPage: Page = .splash
}
