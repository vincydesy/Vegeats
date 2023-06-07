//
//  ProfileView.swift
//  MyFirstProject
//
//  Created by Vincenzo De Simone on 31/05/23.
//

import SwiftUI

struct ProfileView: View {
    
    @State var myData = sharedRecipe
    
    var body: some View {
        
        NavigationStack {
            
//            VStack() {

                
                ScrollView(.vertical) {
                
//                    VStack {
                        
                        ForEach(myData.recipes){
                            
                            currentrecipe in
                            
                            if (currentrecipe.isLiked == true) {
                                
                                NavigationLink(destination: RecipeDetailView(recipe: currentrecipe,people: .constant(0))){
                                    
                                    ZStack(alignment: .bottom) {
                                        
                                        Image(currentrecipe.imageName).resizable().aspectRatio(contentMode: .fill).frame(width: 350, height: 350)
                                        Rectangle().fill(LinearGradient(colors: [.clear,.black.opacity(0.8)], startPoint: .top, endPoint: .bottom)).frame(width: 350, height: 350)
                                        
                                        VStack (alignment: .leading) {
                                            
                                            Text(currentrecipe.name).bold()
                                            
                                            
                                        } //END VSTACK CARD
                                        .foregroundColor(Color.white).padding()
                                        
                                    } //END ZSTACK
                                    .cornerRadius(15).padding(.horizontal)
                                    
                                } //END FOR TEAMS
                                
                            }
                            
                        }
                        
//                    }
                
                }
                .frame(maxWidth: .infinity)
                .onAppear{ print(myData.recipes[0])}
                .navigationBarTitle("My recipes ♥").frame(maxWidth: .infinity, alignment: .bottomLeading).bold()
            
                
//            } //END VSTACK
            
        } //END NAVIGATION
        
    } // END BODY
    
} //END VIEW

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
