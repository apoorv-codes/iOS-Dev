//
//  FruitCardView.swift
//  shoppingApp05
//
//  Created by Apoorv Verma on 14/10/22.
//

import SwiftUI

let images: FruitModel = FruitModel(id: 1, title: .orange, image: "apple", price: "3.44$", color: "1")

struct FruitCardView: View {
    let fruits: FruitModel
    var body: some View {
        ZStack{
            VStack(alignment: .leading, spacing: 5){
                Text(fruits.title.rawValue)
                    .fontWeight(.bold)
                    .font(.system(.title3))
                    .foregroundColor(.black)
                Text(fruits.price)
                    .font(.system(.title3))
                    .foregroundColor(.black.opacity(0.7))
                Spacer()
            }
            .padding()
            .frame(width: 175, height: 150, alignment: .center)
            .background(Color(fruits.color))
            .cornerRadius(30)
            .padding()
            
            ZStack{
                Image(fruits.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 110)
            }.offset(y: 55)
                .shadow(radius: 4, x: 2, y: 2)
        }
        .frame(width: 175, height: 250, alignment: .center)
        .shadow(radius: 3, x: 5, y: 5)
    }
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruits: images)
    }
}
