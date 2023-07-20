//
//  SignInScreenView.swift
//  Pet Loop
//
//  Created by Madeline Trombly on 7/20/23.
//

import SwiftUI

struct SignInScreenView: View {
    @State private var email: String = ""
    var body: some View {
        ZStack {
            VStack {
                VStack {
                    
                    Color ("BgColor").edgesIgnoringSafeArea(.all)
                    Text("Sign In")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.bottom, 30)
                    
                    SocalLoginButton(image : Image("Apple"), text: Text("Sign in with Apple"))
                    
                    SocalLoginButton(image : Image("GoogleLogo"), text: Text("Sign in with Google")) .foregroundColor(Color.red)
                        .padding()
                    
                    Text("Or get a link emailed to you!")
                        .foregroundColor(Color.black.opacity(0.4))
                    
                    TextField("Email Address", text: $email)
                        .font(.title3)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(50)
                        .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                        .padding(.vertical)
                    
                    PrimaryButton(title: "Email me a signup link")
                }
                
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Divider()
                Spacer()
                Text("You are completely safe")
                    .fontWeight(.semibold)
                Text("Read our terms and conditions").fontWeight(.semibold).foregroundColor(Color.red)
                Spacer()
                
            }
            .padding()
        }
    }
}


struct SignInScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SignInScreenView()
    }
}
struct SocalLoginButton: View {
    var image: Image
    var text: Text
    var body: some View {
        HStack {
            image
                .padding(.horizontal)
            Spacer()
            text
                .font(.title2)
            Spacer()
        }
        .padding()
        .background(Color.white)
        .cornerRadius(50)
        .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
    }
}

