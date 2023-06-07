//
//  Learner.swift
//  MyFirstProject
//
//  Created by Vincenzo De Simone on 26/05/23.
//

import SwiftUI

struct Learner : Identifiable {
    
    var id = UUID()
    var name: String
    var surname: String
    var favoriteColor: Color
    var imageName : String = "NO"
    var description: String = "NO"
    
}


struct Team: Identifiable {
    
    var id  = UUID()
    var name: String
    var image: String
    var learner: [Learner]    
    
}
