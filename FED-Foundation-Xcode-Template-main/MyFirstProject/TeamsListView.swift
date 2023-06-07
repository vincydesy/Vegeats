//
//  TeamsListView.swift
//  MyFirstProject
//
//  Created by Vincenzo De Simone on 30/05/23.
//

import SwiftUI

struct TeamsListView: View {
    
    @ObservedObject var myData = sharedData
    
    var body: some View {
        
        NavigationStack {
            
            ScrollView() {
                
                VStack() {
                    
                    ForEach(myData.teams){
                        
                      team in
                        ZStack(alignment: .bottomLeading) {
                            
                            Image(team.image).resizable().aspectRatio(contentMode: .fill).frame(height: 200)
                            Rectangle().fill(LinearGradient(colors: [.clear,.black.opacity(0.8)], startPoint: .top, endPoint: .bottom))
                            
                            VStack (alignment: .leading) {
                                
                                Text(team.name).font(.title).bold()
                                
                                ForEach(team.learner) {
                                    
                                    learner in
                                    
                                    Text(learner.name + " " + learner.surname)
                                    
                                } //END FOR LEARNERS
                                
                            } //END VSTACK CARD
                            .foregroundColor(Color.white).padding()
                            
                        } //END ZSTACK
                        .cornerRadius(15).padding(.horizontal)
                        
                    } //END FOR TEAMS
                    
                } //END VSTACK
                
            } //END SCROLL
            .navigationBarTitle("Teams")
        } //END NAVIGATION
        
    } //BODY
    
} //VIEW

struct TeamsListView_Previews: PreviewProvider {
    static var previews: some View {
        TeamsListView()
    }
}
