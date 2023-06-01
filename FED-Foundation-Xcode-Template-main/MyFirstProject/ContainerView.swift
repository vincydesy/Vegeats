//
//  ContainerView.swift
//  MyFirstProject
//
//  Created by Vincenzo De Simone on 30/05/23.
//

import SwiftUI

struct ContainerView: View {
    var body: some View {
        
        TabView {
            
            LearnerListView().tabItem {
                
                Image(systemName: "person.fill")
                Text("Learners")
                
            }
            
            TeamsListView().tabItem {
                
                Image(systemName: "person.3.fill")
                Text("Teams")
                
            }
            
        }
        
    }
}

struct ContainerView_Previews: PreviewProvider {
    static var previews: some View {
        ContainerView()
    }
}
