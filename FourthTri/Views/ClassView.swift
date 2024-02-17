//
//  ClassView.swift
//  FourthTri
//
//  Created by Jacob Best on 2/4/24.
//

import SwiftUI

// description: VIEW ADDS THREE ELIPSIS IF IT EXCEEDS THE MAXIMUM LENGTH PROVIDED

struct TruncatedTextView : View {
  
  let text: String
  let maximumLength: Int
  
  var truncatedText : String {
    
    if text.count > maximumLength {
      return String(text.prefix(maximumLength)) + "..."
    } else {
      return text
    }
    
  }
  
  var body: some View {
    
    Text(truncatedText)
    
  }
}



struct ClassesView: View {
  
  var body: some View {
    
    Text("Hello World")
    
  }
}

struct FeaturedClassesView: View {
  
  var body: some View {
    
    FeaturedScrollView(
      element: "Classes",
      elementName: "Class Name",
      elementDescription:  
        "description description description description description description description description"
    ) {
      ClassesView()
    }
  }
}

#Preview {
    FeaturedClassesView()
}
