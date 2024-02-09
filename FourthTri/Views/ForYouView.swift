//
//  ForYouView.swift
//  FourthTri
//
//  Created by Jacob Best on 2/4/24.
//

import SwiftUI

struct ForYouView: View {
    var body: some View {
        NavigationStack {
            
            mainHeaderView()
            
            ScrollView {
                VStack {
                    HStack {
                        RoundedRectangle(cornerRadius: 15.0)
                            .stroke(Color("forYouGray1"), lineWidth: 1)
                            .frame(width: 174,height: 116)
                            .foregroundColor(.white)
                            .overlay{
                                VStack(spacing: .zero) {
                                    taskHeaders(title: "Facility Hours", sfImage: "clock")
                                    Text("12")
                                        .bold()
                                        .font(.system(size: 52))
                                }
                            }
                        
                        
                        RoundedRectangle(cornerRadius: 15.0)
                            .stroke(Color("forYouGray1"), lineWidth: 1)
                            .frame(width: 174,height: 116)
                            .foregroundColor(.white)
                            .overlay{
                                VStack {
                                    taskHeaders(title: "Daily Tasks", sfImage: "timer")
                                        .padding(.top, 5.0)
                                    VStack {
                                        dailyTask()
                                        dailyTask()
                                    }
                                }
                            }
                    }
                    
                    MyScheduleView()
                    
                    FeaturedClassesView()
                    
                    FeaturedEventsView()
                    
                }
                
                PromotionalImageView(imageName: "FinalForYou", imagePromo: "The most essential gift to give", actionButton: false)
                
            }
        }
    }
}

func dailyTask(_ taskName: String = "Daily Task") -> some View {
    return HStack {
        RoundedRectangle(cornerRadius: 5.0)
            .frame(width: 23, height: 21)
            .foregroundColor(Color("powderpink"))
            .padding(.leading)
            .overlay{
                RoundedRectangle(cornerRadius: 3.0)
                    .frame(width: 19, height: 17)
                    .padding(.leading)
                    .foregroundColor(.white)
            }
        ZStack(alignment: .leading){
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 5.0)
                    .frame(height: 25)
                    .padding(.trailing)
                    .foregroundColor(.ourGray)
                Text("\(taskName)")
                    .font(.system(size: 11))
                    .bold()
                    .padding(.leading, 20)
            }
            UnevenRoundedRectangle(cornerRadii:RectangleCornerRadii(topLeading: 5.0, bottomLeading: 5.0))
                .frame(width: 10, height: 25)
                .foregroundColor(Color("tertiary"))
        }
    }
}

func taskHeaders(title: String, sfImage: String) -> some View {
    return HStack(alignment: .center) {
        RoundedRectangle(cornerRadius: 8.0)
            .frame(width: 35, height: 35, alignment: .topLeading)
            .foregroundColor(Color("powderpink"))
            .overlay{
                Image(systemName: sfImage)
                    .bold()
                    .foregroundColor(.white)
            }
            .padding(.leading)
        Text(title)
            .font(.system(size: 16.0))
            .bold()
        Spacer()
    }
}

struct mainHeaderView : View {
  @State private var isShowingNotification: Bool = false
  @State private var isShowingQRCode: Bool = false
  
    var body : some View {
            HStack {
                
                NavigationLink(destination: ProfileView()) {
                    Image("ProfilePic2")
                        .resizable(resizingMode: .stretch)
                        .frame(width: 61, height: 61)
                        .clipShape(Circle())
                }
                .padding(.leading, 16)
                Spacer()
                
                // NOTIFICATIONS BUTTON
              Button {
                self.isShowingNotification = true
              } label: {
                Image(systemName: "bell")
                  .font(.system(size: 28))
              }
              .popover(isPresented: $isShowingNotification) {
                NotificationModalView()
                  .frame(minWidth: 300, maxHeight: 400)
                  .presentationCompactAdaptation(.popover)
                  .padding()
                  .foregroundStyle(.black)
              }
              
                
                // NOTIFICATIONS BUTTON
                
                // QR CODE BUTTON
                
              Button {
                self.isShowingQRCode = true
              } label: {
                Circle()
                    .frame(width: 45)
                    .overlay {
                        Image(systemName: "qrcode")
                            .font(.system(size: 28))
                            .foregroundStyle(.white)
                    }
              }
              .padding(.trailing, 16)
              .popover(isPresented: $isShowingQRCode){
                QRCodeView()
                  .presentationCompactAdaptation(.none)
                  .padding()
              }
                
                // QR CODE BUTTON
            }
            .foregroundStyle(Color("tertiary"))
            .padding(.bottom)
            
        }
    }

struct PromotionalImageView: View {
    
    var imageName : String
    var imagePromo : String
    var actionButton : Bool
    
    
    var body: some View {
        
        ZStack(alignment: .leading) {
            Image(imageName)
                .resizable()
                .frame(width: 358, height: 116)
                .overlay {
                    RadialGradient(
                        gradient: Gradient(colors: [.clear, .black]),
                        center: .topTrailing,
                        startRadius: .zero,
                        endRadius: CGFloat(600.0)
                    )
                }
                .clipShape(RoundedRectangle(cornerRadius: 8.0))
                .padding(.horizontal, 5)
            
            HStack {
                Text(imagePromo)
                    .font(.system(size: 24))
                    .foregroundStyle(Color.white)
                    .fontWeight(.medium)
                    .padding(.leading, 25)
                    .frame(width: 230,height: 90)
                
                if actionButton {
                    VStack {
                        
                        Button(action: {
                            
                        }, label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 8)
                                    .foregroundStyle(Color.accentColor)
                                    .frame(width: 108, height: 40)
                                Text("Join Now!")
                                    .foregroundStyle(Color.white)
                                    .font(.system(size: 13))
                                    .fontWeight(.medium)
                            }
                            .shadow(radius: 10)
                            .padding(.top, 50)
                        })
                        
                    }
                }
            }
            
        }
        
    }
}




#Preview {
    ForYouView()
}
