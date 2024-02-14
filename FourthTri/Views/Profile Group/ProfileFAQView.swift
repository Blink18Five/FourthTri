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
            Group {
                Text("When do I sign up?")
                Text("How do I redeem a gift card?")
                Text("What is included?")
                Text("Do you provide childcare?")
                Text("What do I need to bring with me?")
                Text("Waht do I wear?")
                Text("Can I bring food to the facility?")
                Text("Is it an overnight resource?")
            }
            .font(.system(size: 18))
        }
        
    }
}

#Preview {
    ProfileFAQView()
}
