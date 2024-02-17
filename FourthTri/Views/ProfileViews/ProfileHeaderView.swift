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
  @State private var isHelpShowing = false
    
    var body: some View {
        VStack {
            
            ProfilePicture(showEdit: true)
            
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
              Button {
                isHelpShowing = true
              } label: {
                ProfileRectangleSection(RectangleImage: "cross", RectangleTitle:
"""
Emergency
Help
""")
              }
              .foregroundStyle(.black)
                
                ProfileRectangleSection(RectangleImage: "list.clipboard", RectangleTitle:
"""
Placeholder
Title
""")
            }
            .padding()
            
        }
        .sheet(isPresented: $isHelpShowing, content: {
          ProfileSOSView()
        })
    }
}


struct ProfilePicture : View {
    
    var showEdit : Bool
    
    var body : some View {
        ZStack {
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
            
            if showEdit {
                Button(action: {
                    // PROFILE PICTURE EDIT ACTION
                }, label: {
                    Image(systemName: "pencil.circle.fill")
                        .font(.system(size: 35))
                        .foregroundStyle(Color.accentColor)
                })
                .offset(x: 45.0,y: 46.0)
            }
           
            
        }
    }
}

#Preview {
    ProfileHeaderView(name: "Leah", email: "leah.smith@gmail.com")
}
