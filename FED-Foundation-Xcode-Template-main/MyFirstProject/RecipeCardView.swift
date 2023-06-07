//
//  RecipeCardView.swift
//  MyFirstProject
//
//  Created by Vincenzo De Simone on 30/05/23.
//

import SwiftUI

struct RecipeCardView: View {

    @State var myData = sharedRecipe
    @State var arrayIngredients: [String] = []
    @State var people = 0
    @State var isModalShowed = false
    @State private var searchText = ""
    
    var filteredRecipes: [Recipe] {
            if searchText.isEmpty {
                return myData.recipes
            } else {
                return myData.recipes.filter { $0.name.localizedCaseInsensitiveContains(searchText) }
            }
        }
    
    var body: some View {
                
        NavigationStack {
                                    
            ScrollView() {
                            
                VStack() {
                    
                    ForEach(filteredRecipes) {
                        
                        currentrecipe in
                        
                        if (arrayIngredients.count != 0) {
                            
                            let compareSet = Set(arrayIngredients)
                            if currentrecipe.ingredients.filter({!compareSet.contains($0)}).isEmpty{
            
                                
                                NavigationLink(destination: RecipeDetailView(recipe: currentrecipe, people: $people)){
                                    
                                    ZStack(alignment: .bottom) {
                                        
                                        Image(currentrecipe.imageName).resizable().aspectRatio(contentMode: .fill).frame(height: 200)
                                        Rectangle().fill(LinearGradient(colors: [.clear,.black.opacity(0.8)], startPoint: .top, endPoint: .bottom))
                                        
                                        VStack (alignment: .leading) {
                                            
                                            HStack {
                                                Text(currentrecipe.name).font(.title)
                                    
                                            }
                                            
                                            
                                        } //END VSTACK CARD
                                        .foregroundColor(Color.white).padding()
                                        
                                    } //END ZSTACK
                                    .cornerRadius(15).padding(.horizontal)
                                    
                                } //END FOR TEAMS
                                .padding(2)
                                
                                
                                
                            }
                            
                        }
                        
                        else {
                            
                            NavigationLink(destination: RecipeDetailView(recipe: currentrecipe, people:$people)){
                                
                                ZStack(alignment: .bottom) {
                                    
                                    Image(currentrecipe.imageName).resizable().aspectRatio(contentMode: .fill).frame(height: 200)
                                    Rectangle().fill(LinearGradient(colors: [.clear,.black.opacity(0.8)], startPoint: .top, endPoint: .bottom))
                                    
                                    VStack (alignment: .leading) {
                                        
                                        HStack {
                                            Text(currentrecipe.name).font(.title)
                                            
                                        }
                                        
                                        
                                    } //END VSTACK CARD
                                    .foregroundColor(Color.white).padding()
                                    
                                } //END ZSTACK
                                .cornerRadius(15).padding(.horizontal)
                                
                            } //END FOR TEAMS
                            .padding(2)
                            
                        }
                        
                    }
                    }//END VSTACK

                    

                    
                } //END SCROLL
                .navigationBarTitle("Recipes")
                .toolbar {
                    
                    ToolbarItem(placement: .automatic) {
                        
                        Button(action: {
                        
                            isModalShowed = true
                            
                        }){
                            
                            Text("My List")
                            
                        } //END BUTTON
                        .sheet(isPresented: $isModalShowed) {
                            
                            IncredientView(arrayIngredients: $arrayIngredients, people: $people)
                            
                        }
                    }
                }
            } //END NAVIGATION
            .searchable(text: $searchText, prompt: "Search a recipe")
            
            
        }

    }

struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView()
    }
}
