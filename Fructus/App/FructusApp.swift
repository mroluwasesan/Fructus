//
//  FructusApp.swift
//  Fructus
//
//  Created by Negatron on 17/04/2023.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isInboarding") var isOnboarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                OnboardingView()
            }
            else{
                ContentView()
            }
        }
    }
}
