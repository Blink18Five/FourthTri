//
//  ScheduleModalView.swift
//  FourthTri
//
//  Created by Ethan Bast on 2/8/24.
//

import SwiftUI

struct ExpandedScheduleView : View {
  
  var scheduleDate : String
  var scheduleTitle : String
  var scheduleTime : String
  
  var body : some View {
    ZStack {
      
      RoundedRectangle(cornerRadius: 10)
        .foregroundStyle(Color.ourGray)
        .frame(width: 311, height: 70)
      
      HStack {
        Rectangle()
          .clipShape(.rect(
            topLeadingRadius: 10,
            bottomLeadingRadius: 10,
            bottomTrailingRadius: 0,
            topTrailingRadius: 0))
          .frame(width: 15, height: 70)
          .foregroundStyle(Color.accentColor)
        
        VStack(alignment: .leading, spacing: 3){
          
          Text(scheduleDate)
            .font(.system(size: 12))
          
          Text(scheduleTitle)
            .font(.system(size: 14))
            .bold()
          
          Text(scheduleTime)
            .font(.system(size: 12))
          
        }
        
        Spacer()
        
      }
    }
  }
}


struct ScheduleModalView: View {
  
  var body: some View {
    
    VStack {
      
      ModalHeaderView(
        headerTitle: "Schedule",
        addButton: true)
      
      ScrollView {
        
        ExpandedScheduleView(
          scheduleDate: "1/31",
          scheduleTitle: "Fireside Chat (Sleep Basics)",
          scheduleTime: "12:00 PM"
        )
        
      }
      .frame(width: 311, height: 350)
    }
  }
}

#Preview {
    ScheduleModalView()
}
