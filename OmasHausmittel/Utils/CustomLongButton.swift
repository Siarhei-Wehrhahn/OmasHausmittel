//
//  CustomLongButton.swift
//  OmasHausmittel
//
//  Created by Siarhei Wehrhahn on 01.07.24.
//

import SwiftUI

struct CustomLongButton: View {
    let label: String
    let imageName: String
    let width: CGFloat
    let height: CGFloat
    let destination: AnyView

    var body: some View {
        NavigationLink(destination: destination) {
            HStack {
                Image(imageName)
                    .resizable()
                    .frame(width: width, height: height)
                    .shadow(radius: 2)
                Text(label)
                    .foregroundColor(.black)
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
                    .frame(maxWidth: .infinity)  // Platz für den gesamten Text
                    .padding(.leading, 10)  // Abstand zwischen Bild und Text
            }
            .padding()
            .frame(height: height)  // Einheitliche Höhe der Schaltfläche
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
        .padding(.horizontal)
    }
}

#Preview {
    CustomLongButton(label: "Omas Hausmittel", imageName: "bg", width: 70, height: 100, destination: AnyView(SplashView()))
}
