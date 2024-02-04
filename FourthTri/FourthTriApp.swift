//
//  FourthTriApp.swift
//  FourthTri
//
//  Created by Jacob Best on 1/25/24.
//

import SwiftUI

@main
struct FourthTriApp: App {
    @State private var isFirstTime: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isFirstTime {
                OnBoardingScreenContentView(firstTime: $isFirstTime)
            } else {
                ContentView()
            }
        }
    }
}
