//
//  ProfileOptionView.swift
//  FourthTri
//
//  Created by Ethan Bast on 2/6/24.
//

import SwiftUI

struct ProfileOptionButton: View {
  
  var listIcon : String
  var listTitle : String
  
  var action: () -> Void
  
  var body: some View {
    
    Button {
      action()
    } label: {
      ZStack {
        RoundedRectangle(cornerRadius: 10)
          .frame(width: 350, height: 51)
          .foregroundStyle(Color.white)
          .overlay(
            RoundedRectangle(cornerRadius: 10)
              .stroke(Color.forYouGray1, lineWidth: 1.5)
          )
        HStack {
          Image(systemName: listIcon)
            .foregroundStyle(Color.accentColor)
            .font(.system(size: 21))
          Text(listTitle)
            .font(.system(size: 16))
            .fontWeight(.medium)
            .foregroundStyle(Color.black)
          Spacer()
        }
        .padding([.leading], 40)
      }
    }
    
  }
}

#Preview {
  ProfileOptionButton(
    listIcon: "house",
    listTitle: "test test test"
  ) { }
}
