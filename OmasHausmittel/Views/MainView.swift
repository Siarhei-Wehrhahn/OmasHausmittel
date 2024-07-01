//
//  MainView.swift
//  OmasHausmittel
//
//  Created by Siarhei Wehrhahn on 01.07.24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image(.bg1)
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 30) {
                    HStack(spacing: 30) {
                        CustomCubeButton(label: "Omas Hausmittel", imageName: "grandma", width: 50, height: 75, destination: AnyView(GrandmotherView()))
                        
                        CustomCubeButton(label: "Reinigungstipps", imageName: "bucket", width: 75, height: 75, destination: AnyView(CleaningTipView()))
                    }
                    
                    HStack(spacing: 30) {
                        CustomCubeButton(label: "Lifehacks", imageName: "lifehack", width: 85, height: 75, destination: AnyView(LifehackView()))
                        
                        CustomCubeButton(label: "Küchentipps", imageName: "kitchen", width: 100, height: 75, destination: AnyView(KitchenTipView()))
                    }
                    
                    HStack(spacing: 30) {
                        CustomCubeButton(label: "Kleidungspflege", imageName: "mannequin", width: 85, height: 75, destination: AnyView(ClothingTipView()))
                        
                        CustomCubeButton(label: "Gesundheitstipps", imageName: "health", width: 75, height: 80, destination: AnyView(HealthTipView()))
                    }
                }
            }
        }
    }
}

#Preview {
    MainView()
}
