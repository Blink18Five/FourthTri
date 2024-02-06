//
//  ClassView.swift
//  FourthTri
//
//  Created by Jacob Best on 2/4/24.
//

import SwiftUI

struct ClassesView: View {
    var body: some View {
        Text("Hello World")
    }
}

struct FeaturedClassesView: View {
    var body: some View {
        FeaturedScrollView(element: "Classes", elementName: "Class Name", elementDescription:  "description description description\ndescription description description\ndescription description ...") 
        {
            ClassesView()
        }
    }
}

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
                NavigationLink(destination: elementDestination()) {
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
                    ElementView(elementName: elementName, elementDescription: elementDescription)
                    ElementView(elementName: elementName, elementDescription: elementDescription)
                    ElementView(elementName: elementName, elementDescription: elementDescription)
                }
            }
            .padding(.leading)
        }
    }
}

struct ElementView: View {
    var elementName: String
    var elementDescription: String
    
    var body: some View {
        ZStack {
            HStack {
                VStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(Color.powderpink)
                        .frame(width: 89, height: 89)
                        .padding(.leading, 30)
                        .padding(.trailing, 50)
                        .padding(.bottom, 120)
                    Spacer()
                }
                VStack {
                    Spacer()
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(Color.powderpink)
                        .frame(width: 89, height: 89)
                    Spacer()
                }
                Spacer()
            }
            VStack(spacing: 0) {
                Image("family")
                    .resizable()
                    .frame(width: 163, height: 99)
                    .clipShape(RoundedRectangle(cornerRadius: 8.0))
                HStack {
                    Text(elementName)
                        .font(.system(size: 16))
                        .bold()
                        .padding([.top, .bottom], 8)
                        .padding(.leading, 55)
                    Spacer()
                }
                HStack(alignment: .top, spacing: 0) {
                    Text(elementDescription)
                        .font(.system(size: 8))
                        .padding(.trailing, 5)
                    VStack {
                        Circle()
                            .frame(width: 23, height: 23)
                            .foregroundStyle(Color.tertiary)
                            .overlay {
                                Image(systemName: "info")
                                    .foregroundStyle(.white)
                            }
                            .padding(.top, 25)
                            .padding(.bottom, 12)
                    }
                }
            }
        }
        .frame(width: 180, height: 180)
        .clipShape(
            RoundedRectangle(cornerRadius: 10)
        )
        .overlay(
            RoundedRectangle(cornerRadius: 10)
            .stroke(Color.gray, lineWidth: 0.5)
        )
    }
}

#Preview {
    FeaturedClassesView()
}
