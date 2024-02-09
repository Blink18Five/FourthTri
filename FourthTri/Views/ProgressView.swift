//
//  ProgressView.swift
//  FourthTri
//
//  Created by Jacob Best on 2/4/24.
//

import SwiftUI


struct ProgressView: View {
    var body: some View {
        VStack {
            let columns = [
                GridItem(.flexible()),
                GridItem(.flexible()),
                GridItem(.flexible()),
                
            ]
            
            ScrollView{
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(0..<15) {index in
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.gray)
                            .frame(height: 100)
                            .overlay(
                                Text("Item\(index)")
                                    .foregroundColor(.white)
                            )
                        
                    }
                }
                .padding()
                    }
                    .navigationTitle("Grid View")
                
                }
            }
        }
        
        
        struct ProgressView_Previews: PreviewProvider {
            static var previews: some View {
                ProgressView()
            }
        }
    
