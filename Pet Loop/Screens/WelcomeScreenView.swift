//
//  WelcomeScreenView.swift
//  Pet Loop
//
//  Created by Madeline Trombly on 7/19/23.
//

import SwiftUI

struct WelcomeScreenView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("BgColor").edgesIgnoringSafeArea(.all)
                VStack {
                    
                    Image("Dog")
                        .renderingMode(.original)
                        .resizable(capInsets: EdgeInsets(top: 4.0, leading: 0.0, bottom: 4.0, trailing: 0.0))
                        .aspectRatio(contentMode: .fit)
                    
                    PrimaryButton(title : "Get Started!")
                    
                   NavigationLink(
                    destination: SignInScreenView().navigationBarHidden(true),
                    label : {
                        Text ("Sign In")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                            .padding()
                            .frame(maxWidth : .infinity)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(50)
                            .shadow(color: Color.black.opacity(0.10), radius: 1, x: 0.0, y: 16)
                            .padding(.vertical)
                    })
                   .navigationBarHidden(true)
                    
                    HStack {
                        Text ("New around here?")
                        Text ("Sign up")
                            .foregroundColor(Color.red)
                    }
                }
                .padding()
            }
        }
    }
}

struct WelcomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreenView()
    }
}
