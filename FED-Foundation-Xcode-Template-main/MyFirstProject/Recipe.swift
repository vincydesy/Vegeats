//
//  Recipe.swift
//  MyFirstProject
//
//  Created by Vincenzo De Simone on 29/05/23.
//

import SwiftUI

struct Recipe : Identifiable {
    
    var id = UUID()
    var name: String = "NO"
    var ingredients: String = "NO"
    var preparation_time: String = "NO"
    var type_dish: String = "NO"
    var nutritional_values: String = "NO"
    var conservation: String = "NO"
    var imageName : String = "NO"
    var description: String = "NO"
    
}
