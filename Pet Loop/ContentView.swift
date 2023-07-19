//
//  ContentView.swift
//  Pet Loop
//
//  Created by Madeline Trombly on 7/19/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Sign In")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            HStack {
                Image("Apple")
                    .padding(.horizontal)
                    
                    
                
                Text("Sign in with Apple")
                    .font(.title2)
            }
            .padding()
            .background(Color.white)
            .cornerRadius(50)
            .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct PrimaryButton: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.bold)
            .foregroundColor(Color.white)
            .frame(maxWidth : .infinity)
            .padding()
            .background(Color(hue: 1.0, saturation: 0.694, brightness: 0.934))
            .cornerRadius(50)
    }
}


