//
//  SplashView.swift
//  OmasHausmittel
//
//  Created by Siarhei Wehrhahn on 01.07.24.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack {
            Image(.bg1)
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            ZStack {
                Text("Hausmittel Tipps")
                    .foregroundColor(.blue)
                    .font(Font.system(size: 40))
                    .offset(x: 2, y: 2)
                    .bold()
                
                Text("Hausmittel Tipps")
                    .foregroundColor(.white)
                    .font(Font.system(size: 40))
                    .opacity(0.8)
                    .bold()
            }
            .padding(.bottom, 200)
        }
    }
}

#Preview {
    SplashView()
}
