//
//  PostView.swift
//  linkedinUI06
//
//  Created by Apoorv Verma on 19/10/22.
//

import SwiftUI

struct PostView: View {
    var postData: [PostData] = [
        .init(id: 0, image: "0", title: "iNeuron", followers: 4066, profileImage: "00"),
            .init(id: 1, image: "1", title: "Learnyst", followers: 2345, profileImage: "01"),
            .init(id: 2, image: "2", title: "Synopsys inc", followers: 1235, profileImage: "02"),
            .init(id: 3, image: "3", title: "Skill-Lync", followers: 908, profileImage: "03"),
            .init(id: 4, image: "4", title: "Intel", followers: 1234, profileImage: "04"),
            .init(id: 5, image: "5", title: "HP", followers: 567, profileImage: "05"),
            .init(id: 6, image: "6", title: "JungleWorks", followers: 346, profileImage: "00")
    ]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                ForEach(postData, id: \.id) { post in
                    PostCardView(data: post)
                    HStack(alignment: .center, spacing: 50) {
                        ForEach(socialView, id: \.ids) { data in
                            VStack{
                                Image(systemName: "\(data.image)")
                                Text("\(data.title)")
                            }
                            .foregroundColor(.black.opacity(0.8))
                            .font(.subheadline)
                        }
                    }
                    .padding(.top,3)
                }
            }
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
    }
}
