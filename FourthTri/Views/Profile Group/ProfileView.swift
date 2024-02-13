//
//  Profile.swift
//  FourthTri
//
//  Created by Jacob Best on 2/4/24.
//

import SwiftUI


struct ProfileView: View {
    
    var body: some View {
        VStack {
            
            Spacer()
            
            ProfileHeaderView(name: "Leah", email: "leah.smith@gmail.com")
            
            ProfileOptionButton(listIcon: "person.circle", listTitle: "Edit/Settings") {
                
            }
            ProfileOptionButton(listIcon: "qrcode", listTitle: "QR Code") {
                
            }
            ProfileOptionButton(listIcon: "questionmark.circle", listTitle: "Mobile Help") {
                
            }
            ProfileOptionButton(listIcon: "rectangle.portrait.and.arrow.right", listTitle: "Log Out") {
                
            }
            Spacer()
            Spacer()
            
        }
    }
}

#Preview {
    ProfileView()
}
