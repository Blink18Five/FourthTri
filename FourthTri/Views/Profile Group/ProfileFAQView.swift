//
//  ProfileFAQView.swift
//  FourthTri
//
//  Created by Ethan Bast on 2/12/24.
//

import SwiftUI

struct ProfileFAQView: View {
    var body: some View {
        
        Group {
            
        ProfilePicture(showEdit: false)
                .padding(.top)
            
            Text("Leah Smith")
                .fontWeight(.medium)
                .font(.title2)
            
            // User.firstName and User.lastName goes here ?
            
            Text("FAQ's")
                .font(.system(size: 32))
                .fontWeight(.medium)
                .padding()
        }
        
            List{
                Text("question 1?")
                Text("question 2?")
                Text("question 3?")
                Text("question 4?")
            }
        
    }
}

#Preview {
    ProfileFAQView()
}
