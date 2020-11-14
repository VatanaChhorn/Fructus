//
//  FructusApp.swift
//  Fructus
//
//  Created by Vatana Chhorn on 13/11/2020.
//

import SwiftUI

@main
struct FructusApp: App {
    
    // MARK: - PROPERTIES
    
    @AppStorage("isOnboarding") var isOnboarding : Bool = true
    
    // MARK: - BODY
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnBoardingView()
            } else {
                ContentView()
            }
        }
    }
}
