//
//  ProfileAndPostView.swift
//  linkedinUI06
//
//  Created by Apoorv Verma on 19/10/22.
//

import SwiftUI

struct ProfileAndPostView: View {
    var body: some View {
        VStack{
            SearchBarView()
                Divider()
            HStack{
                Image(systemName: "square.and.pencil")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 18, height: 18)
                
                Text("Start a post")
                    .font(.body)
                    .foregroundColor(.black)
                
                Spacer()
            }
            .padding(.horizontal)
            
            Divider()
            
            HStack{
                HStack{
                    Image(systemName: "photo")
                        .foregroundColor(.blue)
                    Text("Photo")
                }.padding(.horizontal)
                Spacer()
                HStack{
                    Image(systemName: "video.fill")
                        .foregroundColor(.green)
                    Text("Video")
                }.padding(.horizontal)
                Spacer()
                HStack{
                    Image(systemName: "calendar")
                        .foregroundColor(.orange)
                    Text("Event")
                }.padding(.horizontal)
            }
        }
    }
}

struct ProfileAndPostView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileAndPostView()
    }
}
