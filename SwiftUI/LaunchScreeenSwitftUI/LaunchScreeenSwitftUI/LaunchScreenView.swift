//
//  LaunchScreenView.swift
//  LaunchScreeenSwitftUI
//
//  Created by Alex Krzywicki on 13.10.2024.
//

import SwiftUI

struct LaunchScreenView: View {

    @State var isFirstLaunch: Bool = true
    @State private var size = 0.8
    @State private var opacity = 0.4

    var body: some View {
        if !isFirstLaunch {
            ContentView()
        } else {
            ZStack {
                Color(.background)
                    .ignoresSafeArea()
                VStack {
                    Image("launchLogo")
                        .resizable()
                        .frame(width: 64, height: 64)
                        .scaleEffect(size)
                }
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeInOut(duration: 1.0)) {
                        self.size = 1.2
                        self.opacity = 1.0
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        withAnimation {
                            self.isFirstLaunch = false
                        }
                    }
                }
            }
        }
    }
}
