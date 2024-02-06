//
//  LoginView.swift
//  FourthTri
//
//  Created by Jacob Best on 2/3/24.
//

import SwiftUI

struct LoginView: View {
    @State private var person = Person()
    @State private var isShowing = false
    @State private var isSecured = true
    @State private var email = ""
    @State private var password = ""
    @State private var title  = ""
    @State private var message  = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Image("login")
                Text("Welcome to FourthTri")
                    .font(.system(size: 23))
                    .bold()
                    .padding(.bottom)
                HStack {
                    Image(systemName: "envelope")
                        .font(.system(size: 28))
                        .bold()
                        .padding(.leading)
                    TextField("Email", text: $email)
                        
                }
                Divider()
                    .padding([.leading, .trailing, .bottom])
                    .bold()
                HStack {
                    Image(systemName: "lock")
                        .font(.system(size: 28))
                        .bold()
                        .padding(.leading, 20)
                    ZStack(alignment: .trailing) {
                        SecureField("Password", text: $password)
                            .padding(.leading, 5)
                        Button {
                            self.isSecured.toggle()
                        } label: {
                            Image(systemName: self.isSecured ? "eye.slash" : "eye")
                                .padding(.trailing, 25)
                                .tint(.gray)
                        }
                    }
                        
                }
                Divider()
                    .padding([.leading, .trailing, .bottom])
                ButtonView {
                    authenticate(email: email, password: password)
                } buttonLabel: {
                    Text("Continue")
                        .font(.system(size: 21))
                        .bold()
                }
                Text("or")
                    .italic()
                    .font(.system(size: 18))
                NavigationLink(destination: ContentView()) {
                    HStack {
                        Image(systemName: "apple.logo")
                        Text("Continue with Apple")
                            .font(.system(size: 21))
                            .bold()
                    }
                    .frame(width: 343, height: 54)
                    .foregroundStyle(.white)
                    .background(Color("tertiary"))
                    .clipShape(RoundedRectangle(cornerRadius: 8.0))
                }
                NavigationLink(destination: ContentView().navigationBarBackButtonHidden()) {
                    Text("Continue without logging in")
                        .underline()
                        .italic()
                        .foregroundStyle(.black)
                        .padding(.top, 10)
                }
            }
            .alert(isPresented: $isShowing) {
                Alert(title: Text(title), message: Text(message))
            }
        }
    }
    
    func authenticate(email: String, password: String) {
        guard !email.isEmpty && !password.isEmpty else {
            title = "Empty Fields"
            message = "Please ensure that all fields are populated and resubmit."
            isShowing = true
            return
        }
        switch (email, password) {
        case (person.email, person.password):
            isShowing = false
        case (person.email, _):
            title = "Incorrect Password"
            message = "Please check that the password is correct and retry. If you do not remember the password associated with this account and the account is yours, please reset the passcode using the link bellow."
            isShowing = true
        default:
            title = "Email not found"
            message = "Please recheck the email address or register a new account"
            isShowing = true
        }
    }
}

//struct ErrorMessage: View {
//    var title: String = ""
//    var message: String = ""
//    
//    var body: some View {
//        Alert(title: Text(title), message: Text(message))
//    }
//}

struct ButtonView<Label> : View where Label : View {
    var action: () -> Void
    var buttonLabel: () -> Label
    
    var body: some View {
        Button {
            action()
        } label: {
            buttonLabel()
        }
        .frame(width: 343, height: 54)
        .foregroundStyle(.white)
        .background(Color("tertiary"))
        .clipShape(RoundedRectangle(cornerRadius: 8.0))
    }
}

#Preview {
    LoginView()
}
