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
            VStack {
                Text(recipe.name).font(.title).bold()
                
                Text(recipe.description).foregroundColor(color_view)
                
            }
        }
            
    }
}

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView(recipe: sharedRecipe.recipes[0])
    }
}
