//
//  OnBoardingScreen.swift
//  FourthTri
//
//  Created by Jacob Best on 2/4/24.
//

import SwiftUI

struct OnBoardingScreenContentView: View {
    @Binding var firstTime: Bool
    
    var body: some View {
        NavigationStack {
            TabView {
                FirstOnBoardingScreen()
                SecondOnBoardingScreen()
                ThirdOnBoardingScreen(firstTime: $firstTime)
            }
            .tabViewStyle(.page)
            .toolbar {
                ToolbarItem(id: "skip") {
                    NavigationLink(destination: LoginView()) {
                        Text("skip")
                            .font(.system(size: 17))
                            .underline()
                            .italic()
                            .padding(.trailing)
                            .foregroundStyle(.black)
                    }
                }
            }
        }
    }
}

struct FirstOnBoardingScreen: View {
    var body: some View {
        VStack {
            Text("Welcome to\nFourthTri")
                .multilineTextAlignment(.center)
                .font(.system(size: 30))
                .bold()
            Image("onboard1")
                .resizable()
                .frame(width: 302, height: 291.65)
                .padding()
            Text("Providing you with the tools,\nresources, and support you need\nto navigate this phase with\nstrength and resilience.")
                .multilineTextAlignment(.center)
                .italic()
                .font(.system(size: 19))
                .padding(.top)
        }
    }
}

struct SecondOnBoardingScreen: View {
    var body: some View {
        VStack {
            Image("onboard2")
                .resizable()
                .frame(width: 302, height: 241.5)
                .padding()
            Text("Access therapy, counseling, or\nsupport groups, we're here to help\nyou find the right resources.\nConnect with other mothers, share\nyour thoughts, ask questions, and\nfind understanding in our\nsupportive community. You're not\nalone — let's face this together")
                .multilineTextAlignment(.center)
                .italic()
                .font(.system(size: 19))
                .padding(.top)
        }
    }
}

struct ThirdOnBoardingScreen: View {
    @Binding var firstTime: Bool
    
    var body: some View {
        VStack(spacing: 0) {
            Image("onboard3")
                .resizable()
                .frame(width: 302, height: 406)
                .padding()
            Text("Keep track of your mood, activities,\nand self-care routines. This\npersonalized tracker can help you\nidentify patterns, celebrate small\nvictories, and navigate your unique\njourney towards recovery.")
                .multilineTextAlignment(.center)
                .italic()
                .font(.system(size: 19))
                .padding(.top)
            Spacer()
            NavigationLink(destination: LoginView()) {
                Text("Login / Create Account")
                    .frame(width: 188, height: 39)
                    .foregroundStyle(.white)
                    .background(Color("tertiary"))
                    .clipShape(RoundedRectangle(cornerRadius: 8.0))
            }
            .padding([.bottom, .top], 10)
            NavigationLink(destination: ContentView().onAppear { firstTime = false }) {
                Text("Skip for now")
                    .font(.system(size: 15))
                    .underline()
                    .padding(.bottom)
            }
            Spacer()
        }
    }
}

#Preview {
    OnBoardingScreenContentView(firstTime: .constant(true))
}
