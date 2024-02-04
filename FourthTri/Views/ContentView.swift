//
//  ContentView.swift
//  FourthTri
//
//  Created by Jacob Best on 1/25/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 1
    
    var body: some View {
        TabView(selection: $selection) {
            ForYouView()
                .tabItem {
                    Image(systemName: "doc.text.image")
                    Text("For You")
                }
                .tag(1)
            ProgressView()
                .tabItem {
                    Image(systemName: "trophy")
                    Text("Progress")
                }
                .tag(2)
            PackagesView()
                .tabItem {
                    Image(systemName: "shippingbox")
                    Text("Packages")
                }
                .tag(3)
            Profile()
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
