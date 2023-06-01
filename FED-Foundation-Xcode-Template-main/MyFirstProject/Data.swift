//
//  Data.swift
//  FoundationApp
//
//  Created by Giovanni Monaco on 05/10/22.
//

import SwiftUI

class SharedData: ObservableObject {
    
    @Published var test = ["❤️", "🧡", "💛", "💚", "💙", "💜"]
    
    @Published var learners = [
        
        Learner(name: "Luca", surname: "D'Alessio", favoriteColor: Color.yellow, imageName: "pasquale", description: "Hello everyone i am luca"),
    Learner(name: "Ciro", surname: "Esposito", favoriteColor: Color.red, imageName: "ubaldo", description: "Hello everyone i am ciro"),
        Learner(name: "Giulia", surname: "Rossi", favoriteColor: Color.orange),
        Learner(name: "Victor", surname: "Osimhen", favoriteColor: Color.blue)
        
    ]
    
    @Published var teams = [
    
        Team(name: "Orange", image: "orange", learner: [
        
            Learner(name: "Gigi", surname: "D'Alessio", favoriteColor: Color.blue),
            Learner(name: "Paolo", surname: "Sorrentino", favoriteColor: Color.red),
            Learner(name: "Genny", surname: "Savastano", favoriteColor: Color.orange),
            Learner(name: "Filippo", surname: "Ferrari", favoriteColor: Color.yellow)
        
        ]),
        
        Team(name: "Pink", image: "pink", learner: [
        
            Learner(name: "Victor", surname: "Osimhen", favoriteColor: Color.blue),
            Learner(name: "Cristiano", surname: "Ronaldo", favoriteColor: Color.orange),
            Learner(name: "Mina", surname: "Settembre", favoriteColor: Color.green),
            Learner(name: "Carmine", surname: "Di Salvo", favoriteColor: Color.gray)
            
        ]),
        
        Team(name: "Red", image: "red", learner: [
        
            Learner(name: "Mario", surname: "Mandato", favoriteColor: Color.blue),
            Learner(name: "Rosa", surname: "Ricci", favoriteColor: Color.red),
            Learner(name: "Avril", surname: "Lavigne", favoriteColor: Color.black),
            Learner(name: "Jared", surname: "Leto", favoriteColor: Color.pink)
        
        ]),
        
        Team(name: "Blue", image: "blue", learner: [
        
            Learner(name: "Lello", surname: "Arena", favoriteColor: Color.blue),
            Learner(name: "Scarlett", surname: "Johansson", favoriteColor: Color.pink),
            Learner(name: "Leonardo", surname: "DiCaprio", favoriteColor: Color.red),
            Learner(name: "Kate", surname: "Winslet", favoriteColor: Color.orange)
        
        ])

    ]
    
}

var sharedData = SharedData()

