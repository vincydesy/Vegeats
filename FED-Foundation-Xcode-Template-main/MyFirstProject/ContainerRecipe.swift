//
//  ContainerRecipe.swift
//  MyFirstProject
//
//  Created by Vincenzo De Simone on 31/05/23.
//

import SwiftUI

struct ContainerRecipe: View {
    
    var body: some View {
        
        TabView {
            
            RecipeCardView()
                .tabItem {
                    Image(systemName: "fork.knife.circle.fill")
                    Text("Recipes")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "heart.circle")
                    Text("Profile")
                }
            
        }
        
    }
    
}

struct ContainerRecipe_Previews: PreviewProvider {
    static var previews: some View {
        ContainerRecipe()
    }
}
