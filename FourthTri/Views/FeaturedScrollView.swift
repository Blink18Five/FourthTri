//
//  FeaturedScrollView.swift
//  FourthTri
//
//  Created by Jacob Best on 2/16/24.
//

import SwiftUI

struct FeaturedScrollView<Destination> : View where Destination : View{
  
    var element: String
    var elementName: String
    var elementDescription: String
    var elementDestination: () -> Destination
    
    var body: some View {
      
        VStack(spacing: 0) {
          
            HStack(alignment: .center, spacing: 0) {
              
                Text(element)
                    .font(.system(size: 24))
                    .bold()
                    .padding(.bottom, 10)
                    .padding([.leading, .top])
              
                Spacer()
              
                NavigationLink(
                  destination: elementDestination()
                ) {
                    HStack {
                        Text("All \(element)")
                        Image(systemName: "chevron.right")
                    }
                    .font(.system(size: 11))
                    .padding(.bottom, 10)
                    .padding([.trailing, .top])
                }
            }
            ScrollView(.horizontal) {
              
                LazyHGrid(rows: [GridItem()]) {
                  
                    GridElementView(
                      elementName: elementName,
                      elementDescription: elementDescription)
                  
                    GridElementView(
                      elementName: elementName,
                      elementDescription: elementDescription)
                  
                    GridElementView(
                      elementName: elementName,
                      elementDescription: elementDescription)
                  
                }
            }
            .padding(.leading)
        }
    }
}

#Preview {
  FeaturedScrollView(
    element: "Classes",
    elementName: "Class Name",
    elementDescription:  
      "description description description description description description description description"
  ) {
      ClassesView()
  }
}
