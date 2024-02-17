//
//  MyScheduleView.swift
//  FourthTri
//
//  Created by Jacob Best on 2/4/24.
//

import SwiftUI

struct MyScheduleView: View {
  
  var body: some View {
    
    VStack(alignment: .leading, spacing: 0) {
      
      Text("My Schedule")
        .font(.system(size: 24))
        .bold()
        .padding([.bottom, .top])
      
      RoundedRectangle(cornerRadius: 15.0)
        .stroke(Color("forYouGray1"), lineWidth: 1)
        .foregroundStyle(.white)
        .frame(width: 358, height: 232)
        .overlay {
          VStack(spacing: 0) {
            
            HStack(spacing: 0) {
              
              TaskHeaders(
                title: "Jan 25th",
                sfImage: "calendar")
              
              Spacer()
              
              Spacer()
              
            }
            .padding([.bottom, .trailing, .top], 10)
            
            VStack(spacing: 0) {
              
              HStack {
                
                Text("12")
                  .font(.system(size: 16))
                  .foregroundStyle(Color("forYouGray1"))
                  .padding([.leading, .trailing], 10)
                
                VStack {
                  
                  Divider()
                    .padding(.trailing)
                  
                }
              }
              
              ZStack(alignment: .leading) {
                
                ZStack(alignment: .leading) {
                  
                  RoundedRectangle(cornerRadius: 5.0)
                    .frame(width: 284, height: 35)
                    .foregroundStyle(Color("forYouGray1"))
                  
                  Text("Fireside Chats (Sleep basics)")
                    .font(.system(size: 16))
                    .bold()
                    .padding(.leading, 20)
                  
                }
                
                UnevenRoundedRectangle(
                  cornerRadii:RectangleCornerRadii(
                    topLeading: 5.0,
                    bottomLeading: 5.0)
                )
                .frame(width: 9.93, height: 35)
                .foregroundColor(Color("tertiary"))
                
              }
              .padding(.leading)
              
              HStack {
                
                Text("1")
                  .font(.system(size: 16))
                  .foregroundStyle(Color("forYouGray1"))
                  .padding([.leading, .trailing], 15)
                
                VStack {
                  
                  Divider()
                    .padding(.trailing)
                  
                }
              }
              
              Spacer()
              
              HStack {
                
                Text("2")
                  .font(.system(size: 16))
                  .foregroundStyle(Color("forYouGray1"))
                  .padding([.leading, .trailing], 14)
                
                VStack {
                  
                  Divider()
                    .padding(.trailing)
                  
                }
              }
              ZStack(alignment: .leading) {
                
                ZStack(alignment: .leading) {
                  
                  RoundedRectangle(cornerRadius: 5.0)
                    .frame(width: 284, height: 35)
                    .foregroundStyle(Color("forYouGray1"))
                  
                  Text("Fireside Chats (Sleep basics)")
                    .font(.system(size: 16))
                    .bold()
                    .padding(.leading, 20)
                }
                
                UnevenRoundedRectangle(
                  cornerRadii:RectangleCornerRadii(
                    topLeading: 5.0,
                    bottomLeading: 5.0)
                )
                .frame(width: 9.93, height: 35)
                .foregroundColor(Color("tertiary"))
                
              }
              .padding(.leading)
              
              HStack {
                
                Text("3")
                  .font(.system(size: 16))
                  .foregroundStyle(Color("forYouGray1"))
                  .padding([.leading, .trailing], 14)
                
                VStack {
                  
                  Divider()
                    .padding(.trailing)
                  
                }
              }
              
              Spacer()
              
            }
          }
        }
    }
  }
}

#Preview {
    MyScheduleView()
}
