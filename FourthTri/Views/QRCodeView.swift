//
//  QRCodeView.swift
//  FourthTri
//
//  Created by Ethan Bast on 2/7/24.
//

import SwiftUI

struct DismissButton: View {
    var body: some View {
        
        
        ZStack {
            Button(action: {
                // DISMISS ACTION GOES HERE
            }, label: {
                
                ZStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundStyle(Color.accentColor)
                    Image(systemName: "xmark")
                        .foregroundStyle(Color.white)
                        .font(.system(size: 16))
                        .fontWeight(.semibold)
                }
            })
        }
        
        
    }
}

struct AppleWalletButtonView: View {
    var body: some View {
        
        Button(action: {
            // HOWEVER IT GETS ADDED TO APPLE WALLET GOES HERE
        }, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 6)
                    .frame(width: 334 , height: 51)
                    .foregroundStyle(Color.black)
                HStack {
                    Image("AppleWalletIcon")
                    Text("Add to Apple Wallet")
                        .foregroundStyle(Color.white)
                        .font(.system(size: 19))
                        .fontWeight(.semibold)
                }
            }
        })
        
    }
}


public struct ModalHeaderView: View {
    
    var headerTitle : String
    
    var addButton : Bool
    
    public var body : some View {
        
        HStack {
                
            DismissButton()
                .padding(.horizontal, 5)
            
                Spacer()
                
                Text(headerTitle)
                    .bold()
                    .font(.title)
                    .padding(.leading, 40)
                
                Spacer()
                Spacer()
            
            if addButton {
                
                Button(action: {
                    // SCHEDULE ACTION GOES HERE SCHEULE MODAL VIEW 
                }, label: {
                    Image(systemName: "plus")
                        .font(.system(size: 24))
                        .fontWeight(.regular)
                        .foregroundStyle(Color.accentColor)
                        .padding(.horizontal, 5)
                })
                
            }
               
            
        }
        .padding()
        
    }
}


struct QRCodeView: View {
    var body: some View {
        
        VStack {
            
            // ModalHeaderView(headerTitle: "Check In",addButton: false)
            
            Image("QRCode")
            
            AppleWalletButtonView()
                .padding()
            
            Text("""
Check in at the FourthTri feacility with this QR Code.
Problem Checking in? Let the FourthTri receptionist know or
visit https://thisisatestlink.com/checkinhelp
""")
            .font(.system(size: 12))
            .multilineTextAlignment(.center)
            .fontWeight(.semibold)
            
        }
    }
}

#Preview {
    QRCodeView()
}
