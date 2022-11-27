//
//  ListViewModel.swift
//  TodoApp-Swiftui07
//
//  Created by Apoorv Verma on 24/11/22.
//

import Foundation

class ListViewModel: ObservableObject {
    @Published var items: [ItemModel] = [] {
        didSet{
            saveItems()
        }
    }
    
    let itemKey: String = "items_List"
    
    init(){
        getItems()
    }
    
    func additem(title: String){
        let newItem = ItemModel(Title: title, IsCompleted: false)
        items.append(newItem)
    }
    
    func updateItem(item: ItemModel){
        if let index = items.firstIndex(where: { $0.id == item.id }) {
            items[index] = item.updateCompleted()
        }
    }
    
    func deleteItem(indexSet: IndexSet){
        items.remove(atOffsets: indexSet)
    }
    
    func moveItems(from: IndexSet, to: Int){
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func getItems() {
        guard let data = UserDefaults.standard.data(forKey: itemKey) else {
            return
        }
        
        guard let savedItems = try? JSONDecoder().decode([ItemModel].self, from: data) else {
            return
        }
        
        self.items = savedItems
    }
    
    func saveItems() {
        if let encodeData = try? JSONEncoder().encode(items) {
            UserDefaults.standard.set(encodeData, forKey: itemKey)
        }
    }
    
}
