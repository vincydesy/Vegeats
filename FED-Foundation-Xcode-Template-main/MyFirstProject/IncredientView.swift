//
//  IncredientView.swift
//  MyFirstProject
//
//  Created by Vincenzo De Simone on 30/05/23.
//

import SwiftUI

struct IncredientView: View {
    
    @State var arr = ["Add ingredient"]
    @State var num = 0
    @State var name: String = ""
    @State var selections = ["Ingredients"]
    var segments = ["Ingredients", "People"]
    
    var body: some View {
        
        NavigationStack {
            
            Picker("", selection: $selections) {
                
                ForEach(segments, id:\.self) {
                    segment in Text(segment).tag(segment)
                }
            }//END: PICKER
            .pickerStyle(.segmented)
            
            VStack {
                
                        
                        Form {
                            List {
                                ForEach(arr, id: \.self){ indices in
                                    TextField("Enter ingredient...", text: $name)
                                }
                                
                            }
                            
                            Button("Add ingredient"){
                                num+=1
                                arr.append("Add Ingredient")
                            }//END BUTTON
                        }
                        
                        
                        NavigationLink {
                            PersonsView()
                        } label: {
                            VStack() {
                                Text("Enter number of person".capitalized)
                                    .foregroundColor(.white)
                            }
                            .frame(maxWidth: .infinity, maxHeight: 61)
                            .background(color_view)
                            .cornerRadius(10)
                            .padding(.horizontal, 15)
                        }
            
            
                    
            } // END VSTACK
            .navigationBarTitle("Insert your ingredients")
            
            
        } //END NAVIGATION
        
    } //END BODY
    
    
} //END VIEW
    
    
    struct IncredientView_Previews: PreviewProvider {
        static var previews: some View {
            IncredientView()
        }
    }
