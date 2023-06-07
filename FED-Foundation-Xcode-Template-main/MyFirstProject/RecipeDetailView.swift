//
//  RecipeDetailView.swift
//  MyFirstProject
//
//  Created by Vincenzo De Simone on 29/05/23.
//

import SwiftUI

struct RecipeDetailView: View {
    
    @ObservedObject var myData = sharedRecipe
    @State var recipe: Recipe
    @State var showInfoModalView: Bool = false
    @Binding var people: Int

    
    var body: some View {
        
        NavigationStack {
            
            VStack {
                
//                ZStack {
                    
                    Image(recipe.imageName)
                        .resizable()
                        .frame(width: 400, height: 300)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(30)
                        .overlay{
                            VStack{
                                Button(action: {
                                    recipe.isLiked.toggle()
                                    print(recipe)
                                }) {
                                    Image(systemName: recipe.isLiked ? "heart.fill" : "heart")
                                        .font(.system(size: 40))
                                }
                                   
                            }
                            .padding()
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
                            
                        }
                    
                   
                    
                    
//                }
                
                
                Text(recipe.name).font(.title).bold()
                
                List {
                    
                    Text("🍴"
                         +
                         " "
                         + recipe.ingredients.joined(separator: " , "))
                    if (people != 0) {
                        Text("🔢" + " " + updatequantity(recipe: recipe).map { String($0) }.joined(separator: " , "))
                        Text("🧑🏼‍🤝‍🧑🏼 For " + String(people) + " People")
                    }
                    else {
                        Text("🔢" + " " + recipe.quantity.map { String($0) }.joined(separator: " , ") )
                        Text("🧑🏼‍🤝‍🧑🏼 For 2 People")

                    }
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
                    Text("Let's Cook!".capitalized)
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
    
    func updatequantity (recipe: Recipe) -> Array<Int> {
        
        var modquantity: Array<Int> = Array()
        
        for quantities in recipe.quantity {
            
            modquantity.append((quantities/2)*people)
            //  (Quantity ingredient\fixed people) * number of people chosen
            
        }
        
        return modquantity
    }
    
}


struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe: sharedRecipe.recipes[0], people: .constant(1))
    }
}
