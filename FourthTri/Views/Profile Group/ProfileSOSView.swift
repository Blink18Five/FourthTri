//
//  ProfileSOSView.swift
//  FourthTri
//
//  Created by Ethan Bast on 2/12/24.
//

import SwiftUI

struct ProfileSOSView: View {
    
    @State var showActionSheet : Bool = false
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Image(systemName: "cross")
                .foregroundStyle(Color.accentColor)
                .font(.system(size: 100))
            
            Text("Need more help?")
                .padding(.vertical)
                .font(.system(size: 24))
                .fontWeight(.bold)
            
            Text("""
If you're feeling overwhelmed or in distress, remember that help is just a call away. Don't hesitate to your emergency contact or the helpline. You're not alone, and there are people ready to support you. Your well-being matters.
""")
            .multilineTextAlignment(.center)
            .padding()
            .font(.system(size: 18))
            
            Spacer()
            
            Button(action: {
                self.showActionSheet = true
            }, label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 350, height: 75)
                    Text("Contact Help")
                        .foregroundStyle(Color.white)
                        .fontWeight(.bold)
                        .font(.system(size: 24))
                }
            })
            .padding()
            .actionSheet(isPresented: $showActionSheet) {
                ActionSheet(title: Text("Select an Option"), message: Text("Choose one of the following options"), buttons: [
                    .default(Text("Emergency Contact")){
                        // action goes here, direct call to emergency contact
                    },
                    .default(Text("911")) {
                        // action goes here, direct call to 911
                    },
                    .cancel()
                ])
            }
        }
    }
}
#Preview {
    ProfileSOSView()
}
