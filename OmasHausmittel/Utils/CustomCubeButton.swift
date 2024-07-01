//
//  CustomButton.swift
//  OmasHausmittel
//
//  Created by Siarhei Wehrhahn on 01.07.24.
//

import SwiftUI

struct CustomCubeButton: View {
    let label: String
    let imageName: String
    let width: CGFloat
    let height: CGFloat
    let destination: AnyView

    var body: some View {
        NavigationLink(destination: destination) {
            VStack {
                Image(imageName)
                    .resizable()
                    .frame(width: width, height: height)
                    .shadow(radius: 2)
                Text(label)
                    .foregroundColor(.black)
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
                    .frame(maxWidth: 150)  // Platz für bis zu 15 Zeichen
            }
            .padding()
            .frame(width: 150, height: 150)  // Einheitliche Größe der Schaltfläche
            .background(Color.lightGray)
            .clipShape(RoundedRectangle(cornerRadius: 25))
            .shadow(radius: 2, x: 2.2, y: 2.2)
            .rotation3DEffect(.degrees(0), axis: (x: -1, y: 0, z: 0))
            .overlay(
                RoundedRectangle(cornerRadius: 25)
                    .stroke(Color.gray, lineWidth: 4)
                    .padding(1)
                    .blur(radius: 5)
                    .mask(
                        RoundedRectangle(cornerRadius: 25)
                            .fill(
                                RadialGradient(
                                    gradient: Gradient(colors: [Color.red, Color.clear]),
                                    center: .center,
                                    startRadius: 1,
                                    endRadius: 0
                                )
                            )
                    )
            )
        }
    }
}

#Preview {
    CustomCubeButton(label: "Omas Hausmittel", imageName: "bg", width: 70, height: 70, destination: AnyView(SplashView()))
}
