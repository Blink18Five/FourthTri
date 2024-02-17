//
//  ProfileSettingsView.swift
//  FourthTri
//
//  Created by Ethan Bast on 2/9/24.
//

import SwiftUI

struct ProfileSettingsView: View {
  
  @State var nameInput : String = ""
  @State var usernameInput : String = ""
  @State var pronounInput : String = ""
  
  @State var emergencyNameInput : String = ""
  @State var emergencyPhoneInput : String = ""
  
  var body: some View {
    
    VStack {
      
      Spacer()
      
      ProfilePicture(showEdit: true)
        .padding()
      
      
      Section {
        
        VStack(alignment: .leading) {
          InputSettingsView(
            textInput: $nameInput,
            inputTitle: "Name",
            inputFieldDescription: "Name",
            isHidden: false)
          .padding(.top, 10)
          
          InputSettingsView(
            textInput: $usernameInput,
            inputTitle: "Username",
            inputFieldDescription: "Username",
            isHidden: false)
          
          InputSettingsView(
            textInput: $pronounInput,
            inputTitle: "Pronouns",
            inputFieldDescription: "Pronouns",
            isHidden: false)
        }
        
      } header: {
      
        VStack(spacing: 5) {
          
          HStack {
            Text("User Information")
              .bold()
              .font(.title2)
            Spacer()
          }
          .padding([.top, .leading])
          
          Divider()
        }
        .padding(.top)
      }
      
      Section {
        
        Group {
          InputSettingsView(
            textInput: $emergencyNameInput,
            inputTitle: "Name",
            inputFieldDescription: "Name",
            isHidden: false
          )
          .textContentType(.familyName)
          .padding(.top, 10)
          
          InputSettingsView(
            textInput: $emergencyPhoneInput,
            inputTitle: "Phone Number #",
            inputFieldDescription: "Phone Number #",
            isHidden: false
          )
          .textContentType(.telephoneNumber)
        }
        
      } header: {
        
        VStack(spacing: 5) {
          
          HStack {
            Text("Emergency Contact")
              .bold()
              .font(.title2)
            Spacer()
          }
          .padding([.leading, .top])
          
          Divider()
        }
        .padding(.top)
      }
      
      Spacer()
    }
  }
}



struct InputSettingsView : View {
  
  @Binding var textInput : String
  
  var inputTitle : String
  var inputFieldDescription : String
  
  var isHidden : Bool
  
  var body : some View {
    
    HStack{
      
      if !isHidden {
        
        CustomTextFieldView(
          text: $textInput, 
          placeholder: inputFieldDescription,
          textColor: .gray,
          widthMultiplier: 1,
          heightMultiplier: 1)
        
      } else {
        
        CustomSecureFieldView(
          hidden: isHidden,
          text: $textInput,
          placeholder: inputFieldDescription,
          textColor: .gray,
          widthMultiplier: 1,
          heightMultiplier: 1
        )
        
      }
      
    }
    .padding(.horizontal)
//    .padding(.vertical, 8)
    
  }
}

struct CustomTextFieldView : View {
  
  @Binding var text : String
  
  var placeholder : String
  
  var textColor : Color
  
  var widthMultiplier : CGFloat
  var heightMultiplier : CGFloat
  
  var body: some View {
    
    GeometryReader { geometry in
      
      VStack {
        
/*
        RoundedRectangle(cornerRadius: 10)
          .stroke(Color.forYouGray1, lineWidth: 1.5)
          .frame(
            width: geometry.size.width * widthMultiplier,
            height: geometry.size.height * heightMultiplier
          )
         
        if text.isEmpty {
          
          Text(placeholder)
            .foregroundColor(textColor)
            .padding(.horizontal, 10)
          
        }
         
*/
        
        TextField(placeholder, text: $text)
          .foregroundColor(.black)
          .padding(.horizontal, 10)
        
        Divider()
        
      }
    }
    .frame(height: 41)
    
  }
}

struct CustomSecureFieldView : View {
  
  @State var hidden : Bool
  
  @Binding var text : String
  
  var placeholder : String
  
  var textColor : Color
  
  var widthMultiplier : CGFloat
  var heightMultiplier : CGFloat
  
  
  var body: some View {
    
    GeometryReader { geometry in
      
      ZStack(alignment: .leading) {
        
        RoundedRectangle(cornerRadius: 10)
          .stroke(Color.forYouGray1, lineWidth: 1.5)
          .frame(
            width: geometry.size.width * widthMultiplier,
            height: geometry.size.height * heightMultiplier
          )
        
        if text.isEmpty {
          
          Text(placeholder)
            .foregroundColor(textColor)
            .padding(.horizontal, 10)
          
        }
        
        if hidden {
          
          SecureField("", text: $text)
            .foregroundColor(.black)
            .padding(.horizontal, 10)
          
        } else {
          
          TextField("", text: $text)
            .foregroundColor(.black)
            .padding(.horizontal, 10)
          
        }
        
        HStack {
          
          Spacer()
          
          Button {
            self.hidden.toggle()
          } label: {
            Image( systemName: hidden ? "eye.slash" : "eye.fill")
          }
          .padding(.horizontal)
          
        }
      }
    }
    .frame(height: 41)
    
  }
}



#Preview {
  
  ProfileSettingsView(
    nameInput: "",
    usernameInput: "",
    pronounInput: "",
    emergencyNameInput: "",
    emergencyPhoneInput: ""
  )
  
}
