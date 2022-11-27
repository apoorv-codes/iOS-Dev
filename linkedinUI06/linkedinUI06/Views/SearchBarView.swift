//
//  SearchBarView.swift
//  linkedinUI06
//
//  Created by Apoorv Verma on 18/10/22.
//

import SwiftUI

struct SearchBarView: View {
    var body: some View {
        HStack(alignment: .center){
            Image("demo")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .frame(width: 60, height: 60)
            
//            Search Bar
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.blue.opacity(0.2))
                .frame(width: 270, height: 35)
                .overlay {
                    HStack{
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                            .font(.body)
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.gray)
                        Spacer()
                        
                    }.padding()
                }
//            Message box
            Image(systemName: "ellipses.bubble.fill")
                .resizable()
                .foregroundColor(.gray)
                .aspectRatio(contentMode: .fit)
                .frame(width: 28, height: 28)
            
        }.padding(.top)
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
    }
}
