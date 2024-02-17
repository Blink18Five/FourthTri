//
//  Achievements.swift
//  FourthTri
//
//  Created by Jacob Best on 1/31/24.
//

import SwiftUI

struct AchievementsView: View {
  
  @State private var name: String = "Leah Smith"
  @State private var email: String = "leahsmith02@gmail.com"
  
  var body: some View {
    
    ProfileHeaderView(name: name, email: email)
    
  }
}

#Preview {
    AchievementsView()
}
