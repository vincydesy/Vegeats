//
//  RecipeCardView.swift
//  MyFirstProject
//
//  Created by Vincenzo De Simone on 30/05/23.
//

import SwiftUI

struct RecipeCardView: View {

    @ObservedObject var myData = sharedRecipe
    @State var isLiked: Bool = false
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
                                        
                    ForEach(filteredRecipes){
                        
                        currentrecipe in
                                                    
                            NavigationLink(destination: RecipeDetailView(recipe: currentrecipe)){
                                
                                ZStack(alignment: .bottom) {
                                    
                                    Image(currentrecipe.imageName).resizable().aspectRatio(contentMode: .fill).frame(height: 200)
                                    Rectangle().fill(LinearGradient(colors: [.clear,.black.opacity(0.8)], startPoint: .top, endPoint: .bottom))
                                    
                                    VStack (alignment: .leading) {
                                      
                                    HStack {
                                        Text(currentrecipe.name).font(.title)
                                         
                                        Button {
                                           isLiked.toggle()
                                        } label: {
                                            Image(systemName: isLiked ? "heart.fill" : "heart")
                                        }
                                    }
                                        
                                        
                                    } //END VSTACK CARD
                                    .foregroundColor(Color.white).padding()
                                    
                                } //END ZSTACK
                                .cornerRadius(15).padding(.horizontal)
                                
                            } //END FOR TEAMS
                            
                        } //END VSTACK
                    

                    
                } //END SCROLL
                .navigationBarTitle("Recipes")
            } //END NAVIGATION
            .searchable(text: $searchText, prompt: "Search a Recipe")
            
        }

    }
}

struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView()
    }
}
