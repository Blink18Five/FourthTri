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
    @State var passwordInput : String = ""
    @State var emergencyNameInput : String = ""
    @State var emergencyPhoneInput : String = ""
    
    var body: some View {
        
        VStack {
            
            ProfilePicture(showEdit: true)
                .padding()
            
            Group {
                InputSettingsView(inputTitle: "Name", inputFieldDescription: "Name", textInput: $nameInput, isHidden: false)
                InputSettingsView(inputTitle: "Username", inputFieldDescription: "Username", textInput: $usernameInput, isHidden: false)
                InputSettingsView(inputTitle: "Pronouns", inputFieldDescription: "Pronouns", textInput: $pronounInput, isHidden: false)
                InputSettingsView(inputTitle: "Password", inputFieldDescription: "Password", textInput: $passwordInput, isHidden: true)
            }
            
            HStack {
                Text("Emergency Contact")
                    .padding()
                    .bold()
                    .font(.system(size: 18))
                Spacer()
            }
            
            InputSettingsView(inputTitle: "Name", inputFieldDescription: "Name", textInput: $emergencyNameInput, isHidden: false)
                .textContentType(.familyName)
            InputSettingsView(inputTitle: "Phone Number #", inputFieldDescription: "Phone Number #", textInput: $emergencyPhoneInput, isHidden: false)
                .textContentType(.telephoneNumber)
        }
        
    }
}


struct InputSettingsView : View {
    
    var inputTitle : String
    var inputFieldDescription : String
    @Binding var textInput : String
    var isHidden : Bool
    
    var body : some View {
        
        HStack{
            //Text(inputTitle)
            
            if !isHidden {
              CustomTextFieldView(placeholder: inputFieldDescription, textColor: .gray, text: $textInput, widthMultiplier: 1, heightMultiplier: 1)
            } else {
                CustomSecureFieldView(placeholder: inputFieldDescription, textColor: .gray, text: $textInput, widthMultiplier: 1, heightMultiplier: 1, hidden: isHidden)
            }
            
                
                
        }
        .padding(.horizontal)
        .padding(.vertical, 8)
        
    }
}

struct CustomTextFieldView : View {
    
    var placeholder : String
    var textColor : Color
    @Binding var text : String
    var widthMultiplier : CGFloat
    var heightMultiplier : CGFloat
    
    var body: some View {
        GeometryReader { geometry in
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.forYouGray1, lineWidth: 1.5)
                .frame(width: geometry.size.width * widthMultiplier , height: geometry.size.height * heightMultiplier)
            
            if text.isEmpty {
                Text(placeholder)
                    .foregroundColor(textColor)
                    .padding(.horizontal, 10)
            }
            
                TextField("", text: $text)
                    .foregroundColor(.black)
                    .padding(.horizontal, 10)
            }
            
        }
        .frame(height: 41)
        
    }
}

struct CustomSecureFieldView : View {
    
    var placeholder : String
    var textColor : Color
    @Binding var text : String
    var widthMultiplier : CGFloat
    var heightMultiplier : CGFloat
    @State var hidden : Bool
    
    var body: some View {
        
        GeometryReader { geometry in
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.forYouGray1, lineWidth: 1.5)
                .frame(width: geometry.size.width * widthMultiplier , height: geometry.size.height * heightMultiplier)
            
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
                
                Button(action: {
                    self.hidden.toggle()
                }, label: {
                    Image(systemName: hidden ? "eye.slash" : "eye.fill")
                })
                .padding(.horizontal)
                
            }
            
        }
            
        }
        .frame(height: 41)
        
    }
}



#Preview {
    ProfileSettingsView(nameInput: "", usernameInput: "", pronounInput: "", passwordInput: "", emergencyNameInput: "", emergencyPhoneInput: "")
}
