//
//  AddView.swift
//  TodoApp-Swiftui07
//
//  Created by Apoorv Verma on 25/11/22.
//

import SwiftUI

struct AddView: View {
    
    //dismiss a view
    @Environment(\.presentationMode) var presentationMode
    
    @EnvironmentObject var listviewmodel: ListViewModel
    @State var textFieldText: String = ""
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    var body: some View {
        ScrollView{
            VStack{
                TextField("Type something here ...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(hue: 0.621, saturation: 0.048, brightness: 0.916))
                    .cornerRadius(10)
                Button(action: saveButtonTapped, label: {
                    Text("Save")
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(20)
                })
            }.padding(16)
        }.navigationTitle("Add an Item")
            .alert(isPresented: $showAlert, content: getAlert)
    }
    
    func saveButtonTapped(){
        if textIsValid() {
            listviewmodel.additem(title: textFieldText)
            presentationMode.wrappedValue.dismiss()
        }
    }
    
    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }
    
    func textIsValid() -> Bool {
        if textFieldText.count < 3 {
            alertTitle = "Your TODO item should contain atleast 3 characcters 😟"
            showAlert.toggle()
            return false
        }
        return true
    }
    
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView()
    }
}
