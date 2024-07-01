//
//  OmasHausmittelApp.swift
//  OmasHausmittel
//
//  Created by Siarhei Wehrhahn on 30.06.24.
//

import SwiftUI

@main
struct OmasHausmittelApp: App {
    @StateObject private var viewRouter = ViewRouter()
    @StateObject private var itemViewModel = ItemViewModel()
    
    var body: some Scene {
        WindowGroup {
            if viewRouter.currentPage == .splash {
                SplashView()
                    .onAppear {
                        // Change view after 1 second
                        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                            withAnimation {
                                viewRouter.currentPage = .home
                            }
                        }
                    }
            } else if viewRouter.currentPage == .home {
                MainView()
                    .environmentObject(itemViewModel)
            }
        }
    }
}
