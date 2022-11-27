//
//  ListRowView.swift
//  TodoApp-Swiftui07
//
//  Created by Apoorv Verma on 26/11/22.
//

import SwiftUI

struct ListRowView: View {
    let item: ItemModel
    var body: some View {
        HStack{
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }.font(.title2)
            .padding(.vertical, 8)
        
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var item1 = ItemModel(Title: "Item 1", IsCompleted: true)
    static var previews: some View {
        ListRowView(item: item1)
    }
}
