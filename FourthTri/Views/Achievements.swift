//
//  Achievements.swift
//  FourthTri
//
//  Created by Jacob Best on 1/31/24.
//

import SwiftUI

struct Achievements: View {
    @State private var name: String = "Leah Smith"
    @State private var email: String = "leahsmith02@gmail.com"
    
    var body: some View {
        VStack {
            Circle()
                .frame(width: 127, height: 127)
                .foregroundStyle(Color("powderpink"))
                .opacity(0.21)
                .overlay {
                    Image("profile")
                        .resizable()
                        .frame(width: 120, height: 120)
                        .clipShape(Circle())
                }
            Text(name)
            Text(email)
            HStack {
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.gray, lineWidth: 1)
                    .foregroundStyle(.white)
                    .frame(width: 87, height: 87)
                    .padding()
                    
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.gray, lineWidth: 1)
                    .foregroundStyle(.white)
                    .frame(width: 87, height: 87)
                    .padding()
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.gray, lineWidth: 1)
                    .foregroundStyle(.white)
                    .frame(width: 87, height: 87)
                    .padding()
            }
        }
    }
}

#Preview {
    Achievements()
}
