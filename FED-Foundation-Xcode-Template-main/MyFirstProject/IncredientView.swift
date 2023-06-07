//
//  IncredientView.swift
//  MyFirstProject
//
//  Created by Vincenzo De Simone on 30/05/23.
//

import SwiftUI

struct IncredientView: View {
    
    @Binding var arrayIngredients: [String]
    @Binding var people: Int
    @State var num = 0
    @State var selectedMod = 0
    @State var isModalShowed = false
    @State var newingredient = ""
    @State var name: String = ""
    @Environment (\.dismiss) var dismiss
    
    private func deleteItem(at indexSet: IndexSet){
     self.arrayIngredients.remove(atOffsets: indexSet)
    }
    
    var body: some View {
        
        
        NavigationStack {
            
            Picker(selection: $selectedMod, label: Text("")) {
                        Text("Ingredients").tag(0)
                        Text("Peoples").tag(1)
                    }//END: PICKER
            .pickerStyle(.segmented)
            .padding(.horizontal)
            
            if (selectedMod == 0){
                
                
                VStack {
                    
                    Form {
                        
                        List {
                            TextField("Insert ingredient...", text: $newingredient)
                        }
                        
                        
                        Button("ADD Ingredient"){
                            num+=1
                            var stringwithoutspaces = newingredient.trimmingCharacters(in: .whitespaces)
                            arrayIngredients.append(stringwithoutspaces)
                            self.newingredient = ""
                        }//END BUTTON
                    
                    }
                    
                    
                    Text("Your List").font(.largeTitle).bold()
                                        
                    List {
                        
                        ForEach(0..<arrayIngredients.count, id: \.self) { indices in
                            Text(arrayIngredients[indices])
                            
                        }.onDelete(perform: self.deleteItem)
                    }
                            
                
                
                        
                } // END VSTACK
                .navigationBarTitle("Insert your ingredients")
                .toolbar {
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        
                        Button("Done") {

                           dismiss()
                            
                        }
                        
                    }
                    
                }
                
            }
            else if (selectedMod == 1){
                
                
                VStack() {
                    
                    Stepper("People's Number", value: $people, in: 0...100)
                    Text("Actual number of people: \(people)").bold()
                    
                }.navigationTitle("How many are you?")
                    .frame(maxHeight: .infinity, alignment: .top)
                    .padding(20)
                    .toolbar {
                        
                        ToolbarItem(placement: .navigationBarTrailing) {
                            
                            Button("Done") {
                                
                                dismiss()
                                
                            }
                            
                        }
                        
                    }
                                
            }
            
        } //END NAVIGATION
        
    } //END BODY
    
    
} //END VIEW
    
