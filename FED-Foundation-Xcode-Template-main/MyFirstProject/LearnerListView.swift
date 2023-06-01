//
//  LearnerListView.swift
//  MyFirstProject
//
//  Created by Vincenzo De Simone on 26/05/23.
//

import SwiftUI



struct LearnerListView: View {
    // MARK: PROPERTIES
    @ObservedObject var myData = sharedData
    @State var isModalShowed: Bool = false
    
    //MARK: BODY
    var body: some View {
        NavigationStack {
            List {
                ForEach(myData.learners) {
                    // represent my learners here
                    currentLearner in
                    
                    NavigationLink(destination: LearnerDetailView(learner: currentLearner)){
                        HStack() {
                            Image(systemName: "person.fill").foregroundColor(currentLearner.favoriteColor)
                            Text(currentLearner.name + " " +  currentLearner.surname )
                        }
                    }
                }.onDelete {
                    index in
                    myData.learners
                    .remove(atOffsets: index)
                }
            }
            .navigationTitle("Learners")
            .toolbar {
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    
                    Button(action: {
                    
                        isModalShowed = true
                        
                    }){
                        
                        Image(systemName: "plus")
                        
                    } //END BUTTON
                    .sheet(isPresented: $isModalShowed) {
                        
                        AddNewLearnerView()
                        
                    }
                    
                }
                
            }
        }
    }
}

struct LearnerListView_Previews: PreviewProvider {
    static var previews: some View {
        LearnerListView()
    }
}
