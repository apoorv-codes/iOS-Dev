//
//  ContentView.swift
//  SplashScreen04
//
//  Created by Apoorv Verma on 14/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            Text("Home Screen of Apoorv's App")
                .foregroundColor(.white)
                .font(.system(size: 30))
                .bold()
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
