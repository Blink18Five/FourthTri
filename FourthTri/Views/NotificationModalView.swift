//
//  NewNotificationModalView.swift
//  FourthTri
//
//  Created by Ethan Bast on 2/7/24.
//

import SwiftUI

struct BoldText: View {
    var text : String
    var body : some View {
        Text(text)
            .fontWeight(.bold)
    }
}

struct NotificationIcon : View {
    
    var sfImage : String
    
    var body : some View {
        
        RoundedRectangle(cornerRadius: 8.0)
            .frame(width: 35, height: 35, alignment: .topLeading)
            .foregroundColor(Color("powderpink"))
            .overlay{
                Image(systemName: sfImage)
                    .bold()
                    .foregroundColor(.white)
                    .font(.system(size: 18))
            }
    }
}

struct NotificationStyle : View {
    
    var notificationAge : Int
    
    // NOTIFICATION AGE WOULD CHANGE TO A STRING BASED ON TIME OF NOTIFY EXAMPLE: INSTEAD OF BEING AMOUNT OF HOURS LIKE 168 IT WOULD BE 1 WEEK AGO
    
    var notificationTitle : String
    var notificationDescription : String
    
//    var isRecent : Bool
//    @State var isHidden : Bool
    
    // TRIED TO MAKE THE NOTIFICATION CIRCLE HIDDEN BUT I GAVE UP :P
    
    var body: some View {
        
        HStack {
            NotificationIcon(sfImage: "gift.fill")
            VStack {
                HStack {
                    Text(notificationTitle)
                        .fontWeight(.bold)
                    +
                    Text(" \(notificationDescription)")
                    Spacer()
                }
                .multilineTextAlignment(.leading)
                .frame(width: 222)
                .font(.system(size: 12))
                HStack {
                    Text("\(notificationAge)h")
                        .font(.system(size: 11))
                        .fontWeight(.medium)
                        .foregroundStyle(Color.gray)
                        .padding(.horizontal)
                    Spacer()
                }
                
            }
            .padding(.bottom, 5)
            
            Spacer()
            
            Circle()
                .frame(width: 10, height: 10)
                .foregroundStyle(Color.powderpink)
            
        }
        
    }
    
}

struct NotificationModalView: View {
    var body: some View {
        VStack {
            
            //ModalHeaderView(headerTitle: "Notifications", addButton: false)
            
            ScrollView(.vertical) {
                
                // I WAS GETTING AN ERROR TRYING TO DO THE LAZY V GRID THING SO I LEFT IT AS A V STACK
                
                VStack {
                    
                    HStack {
                        Text ("Recent")
                            .font(.system(size: 18))
                            .fontWeight(.bold)
                        Spacer()
                        
                        Button(action: {
                            // EDIT ACTION GOES HERE
                        }, label: {
                            Text("Edit")
                                .foregroundStyle(Color.gray)
                                .underline()
                                .font(.system(size: 13))
                        })
                        
                    }
                    .padding([.bottom], 20)
                    
                    NotificationStyle(notificationAge: 4, notificationTitle: "The Unlimited Package Sale", notificationDescription: "10% off until the end of February!")
                    NotificationStyle(notificationAge: 12, notificationTitle: "Fireside Chats (Sleep Basics)", notificationDescription: "Registered for class at 12:00 PM.")
                    NotificationStyle(notificationAge: 16, notificationTitle: "Daily Tasks", notificationDescription: "Finish your daily tasks before the day ends!")
                    
                    HStack {
                        Text("Read")
                            .font(.system(size: 18))
                            .fontWeight(.bold)
                            .padding(.top, 10)
                        Spacer()
                    }
                    
                    NotificationStyle(notificationAge: 16, notificationTitle: "Daily Tasks", notificationDescription: "Finish your daily tasks before the day ends!")
                    NotificationStyle(notificationAge: 16, notificationTitle: "Daily Tasks", notificationDescription: "Finish your daily tasks before the day ends!")
                    
                    // THESE ARE IN READ SO THEY WOULDNT HAVE THE CIRCLE FOR UNREAD NOTIFICATION
                    
                }
            }
        .frame(width: 311, height: 350)
            
            // HEIGHT IS HARD CODED HERE I DONT KNOW HOW I WOULD DYNAMICALLY CHANGE THE FRAME BASED ON THE AMOUNT OF INFORMATION
        }
    }
}


#Preview {
    NotificationModalView()
}
