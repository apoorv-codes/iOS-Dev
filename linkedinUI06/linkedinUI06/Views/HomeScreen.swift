//
//  HomeScreen.swift
//  linkedinUI06
//
//  Created by Apoorv Verma on 18/10/22.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        VStack {
            ProfileAndPostView()
            PostView()
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
