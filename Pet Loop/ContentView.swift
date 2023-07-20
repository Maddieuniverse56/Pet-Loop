//
//  ContentView.swift
//  Pet Loop
//
//  Created by Madeline Trombly on 7/19/23.
//

import SwiftUI

struct ContentView: View {
   
    var body: some View {
        WelcomeScreenView()
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



