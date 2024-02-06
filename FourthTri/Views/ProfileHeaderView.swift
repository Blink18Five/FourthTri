//
//  ProfileHeaderView.swift
//  FourthTri
//
//  Created by Ethan Bast on 2/5/24.
//

import SwiftUI

struct ProfileRectangleSection: View {
    
    var RectangleImage : String
    var RectangleTitle : String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundStyle(Color.white)
                .frame(width: 87, height: 87)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.forYouGray1)
                )
                .padding([.leading, .trailing], 5)
            
            VStack {
                Image(systemName: RectangleImage)
                    .foregroundStyle(Color.accentColor)
                    .font(.largeTitle)
                Text(RectangleTitle)
                    .font(.caption2)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    
            }
            
        }
    }
}

struct ProfileHeaderView: View {
    var name: String
    var email: String
    
    var body: some View {
        VStack {
            
            Circle()
                .foregroundStyle(Color.ourGray)
                .frame(width: 120 , height: 120)
                .overlay(
                    Circle()
                        .stroke(Color.powderpink, lineWidth: 2)
                        .overlay {
                            Image(systemName: "person.fill")
                                .font(.system(size: 80))
                        }
                        
                )
            
            Text(name)
                .font(.title)
                .fontWeight(.medium)
            Text(email)
            
            HStack {
                ProfileRectangleSection(RectangleImage: "trophy", RectangleTitle:
"""
Placeholder
Title
""")
                ProfileRectangleSection(RectangleImage: "cross", RectangleTitle:
"""
Placeholder
Title
""")
                ProfileRectangleSection(RectangleImage: "list.clipboard", RectangleTitle:
"""
Placeholder
Title
""")
            }
            .padding()
            
        }
    }
}

#Preview {
    ProfileHeaderView(name: "Leah", email: "leah.smith@gmail.com")
}
