//
//  ContentView.swift
//  FourthTri
//
//  Created by Jacob Best on 1/25/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            HStack {
                NavigationLink("Help"){
                    Achievements()
                }
                .padding()
                Spacer()
                NavigationLink("Help"){
                    Achievements()
                }
                .padding()
            }
            ScrollView {
                VStack {
                    HStack {
                        RoundedRectangle(cornerRadius: 15.0)
                            .frame(width: 150,height: 150)
                            .padding()
                        RoundedRectangle(cornerRadius: 15.0)
                            .frame(width: 150,height: 150)
                            .padding()
                    }
                    .padding()
                    RoundedRectangle(cornerRadius: 15.0)
                        .frame(height: 200)
                        .padding()
                    ScrollView(.horizontal) {
                        HStack {
                            RoundedRectangle(cornerRadius: 15.0)
                                .frame(width: 200, height: 200)
                            RoundedRectangle(cornerRadius: 15.0)
                                .frame(width: 200, height: 200)
                            RoundedRectangle(cornerRadius: 15.0)
                                .frame(width: 200, height: 200)
                        }
                        .padding()
                    }
                    ScrollView(.horizontal) {
                        HStack {
                            RoundedRectangle(cornerRadius: 15.0)
                                .frame(width: 200, height: 200)
                            RoundedRectangle(cornerRadius: 15.0)
                                .frame(width: 200, height: 200)
                            RoundedRectangle(cornerRadius: 15.0)
                                .frame(width: 200, height: 200)
                        }
                        .padding()
                    }
                    RoundedRectangle(cornerRadius: 15.0)
                        .frame(height: 200)
                        .padding()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
