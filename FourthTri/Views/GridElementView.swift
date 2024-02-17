//
//  GridElementView.swift
//  FourthTri
//
//  Created by Jacob Best on 2/16/24.
//

import SwiftUI

struct GridElementView: View {
  
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
            .padding(.bottom, 40)
          
          Spacer()
          
        }
        
        Spacer()
        
      }
      
      VStack(spacing: 0) {
        
        Image("family")
          .resizable()
          .frame(width: 163, height: 99)
          .clipShape(
            RoundedRectangle(cornerRadius: 8.0)
          )
        
        HStack {
          
          Text(elementName)
            .font(.system(size: 18))
            .bold()
            .padding([.top, .bottom], 8)
            .padding(.leading, 55)
          
          Spacer()
          
        }
        
        HStack(alignment: .top, spacing: 0) {
          
          TruncatedTextView(
            text: elementDescription,
            maximumLength: 70
          )
          .font(.system(size: 11))
          .frame(width: 150)
          .padding(.leading, 1)
          .fontWeight(.medium)
          
          VStack {
            
            InfoButtonView {
              
            }
            
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

struct InfoButtonView: View {
  
  let action: () -> Void
  
  var body: some View {
    
    Button {
      action()
    } label: {
      
      Circle()
        .frame(width: 23, height: 23)
        .foregroundStyle(Color.tertiary)
        .overlay {
          Image(systemName: "info")
            .foregroundStyle(.white)
        }
        .padding(.top, 25)
        .padding(.bottom, 12)
        .padding(.trailing, 8)
      
    }
    
  }
}

#Preview {
  GridElementView(
    elementName: "Class Name",
    elementDescription: "Class Description")
}
