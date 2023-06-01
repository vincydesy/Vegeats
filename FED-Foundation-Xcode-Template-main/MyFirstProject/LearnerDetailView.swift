//
//  LearnerDetailView.swift
//  MyFirstProject
//
//  Created by Vincenzo De Simone on 29/05/23.
//

import SwiftUI

struct LearnerDetailView: View {
    
    @ObservedObject var myData = sharedData
    
    var learner: Learner
    
    var body: some View {
        
        ZStack{
            
            learner.favoriteColor
                .opacity(0.2)
                .ignoresSafeArea()
            
            VStack {
                Image(learner.imageName).resizable().aspectRatio(contentMode: .fill)
                    .frame(width: 280, height: 280)
                    .clipShape(Circle())
                    .shadow(radius: 10)
                    .padding(5)
                
                    HStack{
                        Text(learner.name)
                        Text(learner.surname)
                    }.font(.title)
                    .bold()
                    .foregroundColor(learner.favoriteColor)
                Text(learner.description)
            }
        }
    }
}

struct LearnerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LearnerDetailView(learner: sharedData.learners[0])
    }
}
