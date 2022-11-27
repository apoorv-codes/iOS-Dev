//
//  PostCardView.swift
//  linkedinUI06
//
//  Created by Apoorv Verma on 18/10/22.
//

import SwiftUI

struct SocialView {
    var ids: Int
    var image: String
    var title: String
}

var socialView: [SocialView] = [
    .init(ids: 0, image: "hand.thumbsup", title: "Like"),
    .init(ids: 1, image: "text.bubble", title: "Comment"),
    .init(ids: 2, image: "arrow.turn.up.right", title: "Share"),
    .init(ids: 3, image: "paperplane.fill", title: "Send")
]

let samplePostData = PostData(id: 1, image: "2", title: "Apoorv Verma", followers: 5, profileImage: "01")

struct PostCardView: View {
    var data: PostData
    var body: some View {
        VStack(alignment: .leading) {
            Rectangle()
                .fill(.gray.opacity(0.4))
                .frame(width: .infinity, height: 10)
                .ignoresSafeArea(.all)
            
            HStack(alignment: .center) {
                Image("\(data.profileImage)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .frame(width: 70, height: 70)
                VStack(alignment: .leading){
                    Text("\(data.title)")
                        .font(.body)
                    Text("\(data.followers) followers")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Text("8m")
                        .foregroundColor(.gray.opacity(0.8))
                        .font(.caption)
                }.frame(height: 20, alignment: .leading)
                Spacer()
                Image(systemName: "ellipsis")
                    .padding(.horizontal)
            }
            .padding([.top,.bottom],1)
            
            Text("Looking for a new course iOS with swift UI, You are already at a great place.")
                .padding(.horizontal)
            
            Image(data.image)
                .resizable()
                .aspectRatio( contentMode: .fit)
                .frame(width: .infinity, height: .infinity, alignment: .center)
            Divider()
        }
    }
}

struct PostCardView_Previews: PreviewProvider {
    static var previews: some View {
        PostCardView(data: samplePostData)
    }
}
