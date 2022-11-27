//
//  TodoApp_Swiftui07App.swift
//  TodoApp-Swiftui07
//
//  Created by Apoorv Verma on 24/11/22.
//

import SwiftUI

@main
struct TodoApp_Swiftui07App: App {
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
