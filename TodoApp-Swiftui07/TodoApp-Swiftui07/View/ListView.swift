//
//  ListView.swift
//  TodoApp-Swiftui07
//
//  Created by Apoorv Verma on 26/11/22.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var listviewmodel: ListViewModel
    
    var body: some View {
        ZStack{
            if listviewmodel.items.isEmpty {
                NoListView()
                    .transition(AnyTransition.opacity.animation(.easeIn))
            } else{
                List{
                    ForEach(listviewmodel.items) {item in
                        ListRowView(item: item)
                            .onTapGesture {
                                withAnimation(.easeOut(duration: 0.15)){
                                    listviewmodel.updateItem(item: item)
                                }
                            }
                    }
                    .onDelete(perform: listviewmodel.deleteItem)
                    .onMove(perform: listviewmodel.moveItems)
                }
            }
        }.navigationTitle("Todo List 🖋️")
            .navigationBarItems(leading: EditButton(), trailing: NavigationLink("Add", destination: AddView()))
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ListView()
        }.environmentObject(ListViewModel())
    }
}
