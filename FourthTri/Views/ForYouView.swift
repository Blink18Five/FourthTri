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
            HStack {
                
                NavigationLink(destination: ProfileView()) {
                    Image("profile")
                        .resizable()
                        .frame(width: 61, height: 61)
                        .clipShape(Circle())
                }
                .padding(.leading)
                Spacer()
                
                // NOTIFICATIONS BUTTON
                
                NavigationLink(destination: AchievementsView()) {
                    Image(systemName: "bell")
                        .font(.system(size: 28))
                }
                
                // NOTIFICATIONS BUTTON
                
                // QR CODE BUTTON
                
                NavigationLink(destination: AchievementsView()) {
                    Circle()
                        .frame(width: 45)
                        .overlay {
                            Image(systemName: "qrcode")
                                .font(.system(size: 28))
                                .foregroundStyle(.white)
                        }
                }
                .padding(.trailing)
                
                // QR CODE BUTTON
            }
            .foregroundStyle(Color("tertiary"))
            .padding(.bottom)
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
                ZStack(alignment: .leading) {
                    Image("finalForYou")
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
                        .padding()
                    Text("The most essential\ngift to give")
                        .multilineTextAlignment(.leading)
                        .font(.system(size: 25))
                        .foregroundStyle(Color.white)
                        .bold()
                        .padding(.leading, 25)
                }
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

#Preview {
    ForYouView()
}
