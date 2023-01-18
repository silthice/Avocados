//
//  RecipeCookingView.swift
//  Avocados
//
//  Created by Giap on 18/01/2023.
//

import SwiftUI

struct RecipeCookingView: View {
    
    //MARK: - PROPERTIES
    var recipe: Recipe
    
    //MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 5, content: {
            HStack(alignment: .center, spacing: 2, content: {
                Image(systemName: "person.2")
                Text("Serves: \(recipe.serves)")
            }) //: End of HStack
            
            HStack(alignment: .center, spacing: 2, content: {
                Image(systemName: "clock")
                Text("Preps: \(recipe.preparation)")
            }) //: End of HStack
            
            HStack(alignment: .center, spacing: 2, content: {
                Image(systemName: "flame")
                Text("Cooking: \(recipe.cooking)")
            }) //: End of HStack
        }) //: End of HStack
        .font(.footnote)
        .foregroundColor(.gray)
    }
}

struct RecipeCookingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCookingView(recipe: recipesData[0])
            .previewLayout(.fixed(width: 320, height: 60))
    }
}
