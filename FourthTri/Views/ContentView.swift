//
//  ContentView.swift
//  FourthTri
//
//  Created by Jacob Best on 1/25/24.
//

import SwiftUI

struct ContentView: View {
//    @State private var selection = 2
    
    var body: some View {
        TabView {
            ForYouView()
                .tabItem {
                    Image(systemName: "doc.text.image")
                    Text("For You")
                }
            ProgressView()
                .tabItem {
                    Image(systemName: "trophy")
                    Text("Progress")
                }
            PackagesView()
                .tabItem {
                    Image(systemName: "shippingbox")
                    Text("Packages")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Profile")
                }
            
        }
    }
}


#Preview {
    ContentView()
}
