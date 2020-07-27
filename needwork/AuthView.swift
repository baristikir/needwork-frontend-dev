//
//  AuthView.swift
//  needwork
//
//  Created by Baris Tikir on 27.07.20.
//  Copyright © 2020 Baris Tikir. All rights reserved.
//

import SwiftUI

struct SignInView: View {
    
    //private members
    @State private var username: String = ""
    @State private var password: String = ""
    
    //For Signing in
    func signIn(){
        
    }
    
    var body: some View{
        VStack(alignment: .center){
            
            //Heading
            Text("Welcome")
                .font(.system(size: 32, weight: .heavy))
            
            //Heading2
            Text("Sign in to continue")
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(Color(UIColor.gray))
            
            //Vertical Stack for TextField's
            VStack(spacing: 15)
            {
                //Textfield for the username
                TextField("Enter Username..", text: $username)
                    .font(.system(size:14))
                    .padding(12)
                    .background(RoundedRectangle(cornerRadius: 5).strokeBorder(Color("bg1"), lineWidth: 1))
                    //.textFieldStyle(RoundedBorderTextFieldStyle())
                  
                //Textfield for the password
                SecureField("Enter Password..", text: $password)
                    .font(.system(size:14))
                    .padding(12)
                    .background(RoundedRectangle(cornerRadius: 5).strokeBorder(Color("bg1"), lineWidth: 1))
                    //.textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .padding(.vertical, 64)
            
            //Login Button
            Button(action: signIn) {
                //Displayed Button text with styling
                Text("Sign In")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .frame(height: 50)
                    .foregroundColor(Color(UIColor.white))
                    .font(.system(size:14, weight: .bold))
                    .background(LinearGradient(gradient: Gradient(colors: [
                        .blue , .blue ]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(5)
            }
            
            //Layout Sizing
            Spacer()
            
            //Navigation Footer to SignUpView - **for new users**
            NavigationLink(destination: SignUpView()) {
                HStack{
                    //Footer SignUp Text
                    Text("I'm a new user.")
                        .font(.system(size:14, weight: .light))
                        .foregroundColor(.primary)
                     
                    //Footer SignUp Text
                    Text("Create an account")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(Color(UIColor.systemBlue))
                }
            }
        }
        //Horizontal styling - elements margin to edges
        .padding(.horizontal, 32)

    }
}

struct SignUpView: View{
    var body: some View{
        VStack{
            Text("Sign Up View")
        }
    }
}

struct AuthView: View {
    var body: some View {
        NavigationView{
            SignInView()
        }
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
