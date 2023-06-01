//
//  ProfileView.swift
//  MyFirstProject
//
//  Created by Vincenzo De Simone on 31/05/23.
//

import SwiftUI

struct ProfileView: View {
    
    @ObservedObject var myData = sharedRecipe
    
    var body: some View {
        
        NavigationStack {
            
            VStack() {
                    
                Text("My favorites <3").frame(maxWidth: .infinity, alignment: .bottomLeading).bold()

                
                ScrollView(.horizontal) {
                
                    HStack {
                        
                            ForEach(myData.savedRecipes){
                                
                                currentrecipe in
                                
                                NavigationLink(destination: RecipeDetailView(recipe: currentrecipe)){
                                    
                                    ZStack(alignment: .bottom) {
                                        
                                        Image(currentrecipe.imageName).resizable().aspectRatio(contentMode: .fill).frame(width: 300)
                                        Rectangle().fill(LinearGradient(colors: [.clear,.black.opacity(0.8)], startPoint: .top, endPoint: .bottom))
                                        
                                        VStack (alignment: .leading) {
                                            
                                            Text(currentrecipe.name).bold()
                                            
                                            
                                        } //END VSTACK CARD
                                        .foregroundColor(Color.white).padding()
                                        
                                    } //END ZSTACK
                                    .cornerRadius(15).padding(.horizontal)
                                    
                                } //END FOR TEAMS
                                
                            }
                            
                        }
                    }
                    
                Text("Suggested for you").frame(maxWidth: .infinity, alignment: .bottomLeading).bold()
                
                ScrollView(.horizontal) {
                    
                    HStack {
                        
                        ForEach(myData.recipes){
                            
                            currentrecipe in
                            
                            NavigationLink(destination: RecipeDetailView(recipe: currentrecipe)){
                                
                                ZStack(alignment: .bottom) {
                                    
                                    Image(currentrecipe.imageName).resizable().aspectRatio(contentMode: .fill).frame(width: 300)
                                    Rectangle().fill(LinearGradient(colors: [.clear,.black.opacity(0.8)], startPoint: .top, endPoint: .bottom))
                                    
                                    VStack (alignment: .leading) {
                                        
                                        Text(currentrecipe.name).bold()
                                        
                                        
                                    } //END VSTACK CARD
                                    .foregroundColor(Color.white).padding()
                                    
                                } //END ZSTACK
                                .cornerRadius(15).padding(.horizontal)
                                
                            } //END FOR TEAMS
                            
                        }
                        }
                    }
                    .navigationBarTitle("My receipes")
            
                
            } //END VSTACK
            
        } //END NAVIGATION
        
    } // END BODY
    
} //END VIEW

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
