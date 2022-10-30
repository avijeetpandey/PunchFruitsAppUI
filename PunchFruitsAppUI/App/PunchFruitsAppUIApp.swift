//
//  PunchFruitsAppUIApp.swift
//  PunchFruitsAppUI
//
//  Created by Avijeet Pandey on 30/10/22.
//

import SwiftUI

@main
struct PunchFruitsAppUIApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingScreenView()
            } else {
                ContentView()
            }
        }
    }
}
