//
//  ContentView.swift
//  breakingBadAPI08
//
//  Created by Apoorv Verma on 27/11/22.
//

import SwiftUI

struct Info: Codable {
    var char_id: Int
    var name: String
    var birthday: String
    var status: String
    var appearance: [Int]
    var nickname: String
    var portrayed: String
}


struct ContentView: View {
    @State private var infos = [Info]()
    
    var body: some View {
        NavigationView {
            List(infos, id: \.char_id) { info in
                VStack(alignment: .leading) {
                    Text("Name: \(info.name)")
                    Text("Appearance: \(info.appearance.count)")
                    Text("Nickname: \(info.nickname)")
                    
                }
            }
            .task {
                await fetchData()
            }
        }.navigationTitle("Breaking Bad")
    }
    
    // create URL and fetch data
    
    func fetchData() async {
        guard let url = URL(string: "https://breakingbadapi.com/api/characters") else {
            print("URL does not exist")
            return
        }
        
        do{
            let (data, _) = try await URLSession.shared.data(from: url)
            
            //decoding the data
            if let decodedResponse = try? JSONDecoder().decode([Info].self, from: data) {
                infos = decodedResponse
            }
            
        } catch {
            print("Unable to fetch from URL")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
