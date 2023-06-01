//
//  DataRecipe.swift
//  MyFirstProject
//
//  Created by Vincenzo De Simone on 29/05/23.
//

import SwiftUI

class RecipeData: ObservableObject {
        
    @Published var recipes = [
        
        Recipe(name: "Frittelle di carote e salvia", ingredients: "carote,salvia", preparation_time: "15 mins", type_dish: "First", nutritional_values: "450 kcal", conservation: "Fridge", imageName: "frittelle"),
        Recipe(name: "Polpette di carote e spinaci", ingredients: "carote,spinaci", preparation_time: "15 mins", type_dish: "Second", nutritional_values: "340 kcal", conservation: "Fridge", imageName: "polpette")
        
    ]
    
    @Published var savedRecipes = [
        
        Recipe(name: "Polpette di carote e spinaci", ingredients: "carote,spinaci", preparation_time: "15 mins", type_dish: "Second", nutritional_values: "340 kcal", conservation: "Fridge", imageName: "polpette")
    
    ]
    
}

var sharedRecipe = RecipeData()
