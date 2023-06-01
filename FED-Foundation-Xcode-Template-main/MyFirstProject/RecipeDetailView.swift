//
//  RecipeDetailView.swift
//  MyFirstProject
//
//  Created by Vincenzo De Simone on 29/05/23.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe: Recipe
    var myData = sharedRecipe
    @State var isLiked: Bool = false
    @State var showInfoModalView: Bool = false
    
    var body: some View {
        
        NavigationStack {
                            
            VStack {
                
                ZStack {
                    
                    Image(recipe.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 320)
                        .cornerRadius(30)
                    
                    Button {
                        isLiked.toggle()
                        var new = Recipe(name: recipe.name, ingredients: recipe.ingredients, preparation_time: recipe.preparation_time, type_dish: recipe.type_dish, nutritional_values: recipe.nutritional_values, conservation: recipe.conservation, imageName: recipe.imageName)
                        myData.savedRecipes.append(new)
                    } label: {
                        Image(systemName: isLiked ? "heart.fill" : "heart")
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing).bold().padding()
                    .controlSize(.large)
                    
                    
                }
                
                
                Text(recipe.name).font(.title).bold()
                
                
                
                List {
                    Text("🍴"
                         + " " + recipe.ingredients)
                    Text("🍳" + " " + recipe.preparation_time)
                    Text("🍲" + " " + recipe.type_dish)
                    Text("⚖️" + " " + recipe.nutritional_values)
                    Text("❄" + " " + recipe.conservation)
                }
                .padding(.bottom, 25.0)
                .foregroundColor(color_view)
                
                
                Button(action: {
                    showInfoModalView = true
                }){
                    Text("Let's Cook".capitalized)
                        .foregroundColor(.white)
                        .padding(.horizontal, 100)
                        .padding(.vertical, 15)
                    
                }//end button
                .background(color_view)
                .cornerRadius(10)
                .sheet(isPresented: $showInfoModalView) {
                    DescriptionView(recipe: recipe)
                }
                
                
                
            }//END VSTACK
            .scrollContentBackground(.hidden)
            .navigationBarTitle(Text("Recipe"), displayMode: .inline)

                
            
            }//END NAVIGATION
        
    }// END BODY
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe: sharedRecipe.recipes[0])
    }
}
