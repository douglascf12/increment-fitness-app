//
//  ContentView.swift
//  Increment
//
//  Created by Douglas Cardoso Ferreira on 11/04/21.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        GeometryReader { proxy in
            VStack {
                Spacer().frame(height: proxy.size.height * 0.18)
                Text("Increment")
                    .font(.system(size: 64, weight: .medium))
                    .foregroundColor(.white)
                Spacer()
                Button(action: {}) {
                    HStack(spacing: 15) {
                        Spacer()
                        Image(systemName: "plus.circle")
                            .font(.system(size: 24, weight: .semibold))
                            .foregroundColor(.white)
                        Text("Create a challenge")
                            .font(.system(size: 24, weight: .semibold))
                            .foregroundColor(.white)
                        Spacer()
                    }
                }.padding(.horizontal, 15)
                .buttonStyle(PrimaryButtonStyle())
            }.frame(
                maxWidth: .infinity,
                maxHeight: .infinity
            )
            .background(
                Image("pullups")
                    .resizable()
                    .aspectRatio(
                        contentMode: .fill
                    ).overlay(Color.black.opacity(0.4))
                    .frame(width: proxy.size.width)
                    .edgesIgnoringSafeArea(.all)
            )
        }
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        LandingView().previewDevice("iPhone 8")
        LandingView().previewDevice("iPhone 11 Pro")
        LandingView().previewDevice("iPhone 11 Pro Max")
    }
}
