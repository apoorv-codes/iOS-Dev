//
//  TabView.swift
//  linkedinUI06
//
//  Created by Apoorv Verma on 19/10/22.
//

import SwiftUI

struct TabsView: View {
    var body: some View {
        TabView {
            HomeScreen()
                .tabItem{
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            MyNetworkScreen()
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("MyNetwork")
                }
            Text("Post")
                .tabItem {
                    Image(systemName: "plus.app.fill")
                    Text("Post")
                }
            Text("Notifications")
                .tabItem {
                    Image(systemName: "bell.badge.fill")
                    Text("Post")
                }
            Text("Jobs")
                .tabItem {
                    Image(systemName: "briefcase.fill")
                    Text("Post")
                }
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabsView()
    }
}
