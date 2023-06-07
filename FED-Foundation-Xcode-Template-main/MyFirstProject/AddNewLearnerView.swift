//
//  AddNewLearnerView.swift
//  MyFirstProject
//
//  Created by Vincenzo De Simone on 31/05/23.
//

import SwiftUI

struct AddNewLearnerView: View {
    
    @State var name: String = ""
    @State var surname: String = ""
    @State var description: String = ""
    @State var favoriteColor: Color = Color.black
    @ObservedObject var myData = sharedData
    
    @Environment (\.dismiss) var dismiss
    
    
    var body: some View {
        
        NavigationStack {
            
            Form {
                Section("Name"){
                    
                    TextField("Learner's Name", text: $name)
                    
                }
                
                Section("Surname"){
                    
                    TextField("Learner's Surname", text: $surname)
                    
                }
                
                Section("Description"){
                    
                    TextField("Learner's Description", text: $description)
                    
                }
                
                Section("Favorite Color"){
                    
                    ColorPicker("Select a favorite Color", selection: $favoriteColor)
                    
                }
                
            } //END FORM
            .navigationTitle("Add New Learner")
            .toolbar {
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    
                    Button("Add") {
                        
                        createLearner(name: name, surname: surname, description: description, favoriteColor: favoriteColor)
                        dismiss()
                        
                    }
                    
                }
                
            }
            
        } //END NAVIGATION
        
    } //END BODY
    
    func createLearner(name: String, surname: String, description: String, favoriteColor: Color) {
        
        var createLearner = Learner(name: name, surname: surname, favoriteColor: favoriteColor, description: description)
        myData.learners.append(createLearner)
        
    }
    
} //END VIEW

struct AddNewLearnerView_Previews: PreviewProvider {
    static var previews: some View {
        AddNewLearnerView()
    }
}
