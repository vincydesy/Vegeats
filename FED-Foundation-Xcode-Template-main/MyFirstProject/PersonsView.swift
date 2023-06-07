//
//  PersonsView.swift
//  MyFirstProject
//
//  Created by Vincenzo De Simone on 31/05/23.
//

import SwiftUI

struct PersonsView: View {
    
    @State var people = 0
    
    
    var body: some View {
        
        NavigationStack {
            
            VStack() {
                
                Stepper("Number of people", value: $people, in: 0...100)
                Text("Current number of people: \(people)").bold()
                
                
            }.navigationTitle("How many are you?")
                .frame(maxHeight: .infinity, alignment: .top)
                .padding(20)
            
            NavigationLink {
                RecipeCardView()
            } label: {
                VStack() {
                    Text("GET RECIPES".capitalized)
                        .foregroundColor(.white)
                }
                .frame(maxWidth: .infinity, maxHeight: 61)
                .background(color_view)
                .cornerRadius(10)
                .padding(.horizontal, 15)
            }
            
        }
        
    }//END BODY
    
} //END VIEW

struct PersonsView_Previews: PreviewProvider {
    static var previews: some View {
        PersonsView()
    }
}
