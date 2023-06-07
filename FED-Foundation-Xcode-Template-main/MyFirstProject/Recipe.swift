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
    var ingredients: [String]
    var quantity: [Int]
    var preparation_time: String = "NO"
    var type_dish: String = "NO"
    var nutritional_values: String = "NO"
    var conservation: String = "NO"
    var imageName : String = "NO"
    var description: String = "Passaggio 1, Passaggio 2, Passaggio 3, Passaggio 4, Passaggio 5 , Passaggio 6, Passaggio 7, Passaggio 8, Passaggio 9, Passaggio 10"
    var isLiked: Bool
    
}
