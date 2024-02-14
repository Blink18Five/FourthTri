//
//  Profile.swift
//  FourthTri
//
//  Created by Jacob Best on 2/4/24.
//

import SwiftUI


struct ProfileView: View {
  @State private var isShowingQR = false
    
    var body: some View {
      NavigationStack {
        VStack {
          
          Spacer()
          
          ProfileHeaderView(name: "Leah", email: "leah.smith@gmail.com")
          
          NavigationLink(destination: ProfileSettingsView()) {
            ZStack {
              RoundedRectangle(cornerRadius: 10)
                .frame(width: 350, height: 51)
                .foregroundStyle(Color.white)
                .overlay(
                  RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.forYouGray1, lineWidth: 1.5)
                )
              
              HStack {
                Image(systemName: "person.circle")
                  .foregroundStyle(Color.accentColor)
                  .font(.system(size: 21))
                Text("Edit/Settings")
                  .font(.system(size: 16))
                  .fontWeight(.medium)
                  .foregroundStyle(Color.black)
                Spacer()
              }
              
              .padding([.leading], 40)
              
            }
          }
          ProfileOptionButton(listIcon: "qrcode", listTitle: "QR Code") {
            isShowingQR = true
          }
          NavigationLink(destination: ProfileFAQView()) {
            ZStack {
              RoundedRectangle(cornerRadius: 10)
                .frame(width: 350, height: 51)
                .foregroundStyle(Color.white)
                .overlay(
                  RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.forYouGray1, lineWidth: 1.5)
                )
              
              HStack {
                Image(systemName: "questionmark.circle")
                  .foregroundStyle(Color.accentColor)
                  .font(.system(size: 21))
                Text("Mobile Help")
                  .font(.system(size: 16))
                  .fontWeight(.medium)
                  .foregroundStyle(Color.black)
                Spacer()
              }
              
              .padding([.leading], 40)
              
            }
          }
          
          ProfileOptionButton(listIcon: "rectangle.portrait.and.arrow.right", listTitle: "Log Out") {
            
          }
          Spacer()
          Spacer()
        }
      }
      .sheet(isPresented: $isShowingQR) {
        QRCodeView()
      }
    }
}

#Preview {
    ProfileView()
}
