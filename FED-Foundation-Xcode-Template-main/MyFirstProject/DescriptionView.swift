//
//  DescriptionView.swift
//  MyFirstProject
//
//  Created by Vincenzo De Simone on 29/05/23.
//

import SwiftUI

struct DescriptionView: View {
    
    var recipe: Recipe
    
    var body: some View {
        
        NavigationStack {
            ScrollView(.vertical) {
                
                Text(recipe.description)
                
            }
            .frame(maxHeight: .infinity, alignment: .top)
            .padding()
            .navigationTitle(         Text("Tutorial").font(.title).bold())
        }
            
    }
}

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView(recipe: sharedRecipe.recipes[0])
    }
}
