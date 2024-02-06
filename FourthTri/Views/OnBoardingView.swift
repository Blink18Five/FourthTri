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
            Text("Welcome to\nFourth Tri")
                .multilineTextAlignment(.center)
                .font(.system(size: 30))
                .bold()
            Image("onboard1")
                .resizable()
                .frame(width: 302, height: 291.65)
                .padding()
            Text(
                """
                Providing you with the tools,
                resources, and support you need
                to navigate this phase with
                strength and resilience.
                """
            )
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
            Text(
                """
                Access therapy, counseling, or
                support groups, we're here to help
                you find the right resources.
                Connect with other mothers, share
                your thoughts, ask questions, and
                find understanding in our
                supportive community. You're not
                alone — let's face this together
                """
            )
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
            Text(
                """
                Keep track of your mood, activities,
                and self-care routines. This
                personalized tracker can help you
                identify patterns, celebrate small
                victories, and navigate your unique
                journey towards recovery.
                """
            )
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
