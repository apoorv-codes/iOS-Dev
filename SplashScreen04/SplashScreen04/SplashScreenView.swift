//
//  SplashScreenView.swift
//  SplashScreen04
//
//  Created by Apoorv Verma on 14/10/22.
//

import SwiftUI

struct SplashScreenView: View {
    @State var isActive: Bool = false
    @State private var size = 0.1
    @State private var opacity = 0.4
    
    var body: some View {
        if isActive {
            ContentView()
        } else {
            VStack{
                Image("logo")
                Text("Apoorv Verma")
                    .font(.system(size: 40))
                    .foregroundColor(.black)
                    .opacity(0.6)
                    .bold()
            }
            .scaleEffect(size)
            .opacity(opacity)
            .onAppear{
                withAnimation(.easeIn(duration: 1.0)){
                    self.size = 1.1
                    self.opacity = 1
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5){
                    withAnimation{
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
