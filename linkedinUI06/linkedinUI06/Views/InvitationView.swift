//
//  InvitationView.swift
//  linkedinUI06
//
//  Created by Apoorv Verma on 18/10/22.
//

import SwiftUI

let invitationData = NetworkModel(id: 1, name: "Rahul", position: "SDE at Amazon", mutual: 12, image: "01")

struct InvitationView: View {
    var Data: NetworkModel
    var body: some View {
        HStack(alignment: .center, spacing: 10){
            Image("\(Data.image)")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .frame(width: 80, height: 80)
            VStack(alignment: .leading){
                Text("\(Data.name)")
                    .font(.body)
                Text("\(Data.position)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Text("⚭ \(Data.mutual) mutual connections")
                    .foregroundColor(.gray.opacity(0.8))
                    .font(.caption)
            }.frame(width: 150, height: 20, alignment: .leading)
            
            HStack{
                Image(systemName: "multiply.circle")
                    .font(.system(size: 35))
                    .foregroundColor(.gray)
                Image(systemName: "checkmark.circle")
                    .font(.system(size: 35))
                    .foregroundColor(.blue).opacity(0.8)
                
            }.padding(.horizontal)
            
        }
        .frame(width: .infinity, height: .infinity)
        .padding(.horizontal)
    }
}

struct InvitationView_Previews: PreviewProvider {
    static var previews: some View {
        InvitationView(Data: invitationData)
    }
}
