//
//  RecipeCardView.swift
//  Avocados
//
//  Created by Giap on 18/01/2023.
//

import SwiftUI

struct RecipeCardView: View {
    
    //MARK: - PROPERTIES
    var recipe: Recipe
    
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            //MARK: - CARD IMAGE
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay(
                    HStack {
                        Spacer()
                        VStack {
                            Image(systemName: "bookmark")
                                .font(Font.title.weight(.light))
                                .foregroundColor(.white)
                                .imageScale(.small)
                                .shadow(color: Color("ColorBlackTransparentLight"), radius: 2, x: 0, y: 0)
                                .padding(.trailing, 20)
                                .padding(.top, 20)
                            Spacer()
                        } //: End of VStack
                    } //: End of HStack
                ) //: End of Overlay
            
            VStack(alignment: .leading, spacing: 12, content: {
                //TITLE
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .lineLimit(1)
                
                //HEADLINE
                Text(recipe.title)
                    .font(.system(.body, design: .serif))
                    .foregroundColor(.gray)
                    .italic()
                
                //RATES
                HStack(alignment: .center, spacing: 5, content: {
                    ForEach(1...recipe.rating, id: \.self) { _ in
                        Image(systemName: "star.fill")
                            .font(.body)
                            .foregroundColor(.yellow)
                    } //: End of ForEach
                }) //: End of HStack
               
                //COOKING
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
            })
            .padding()
            .padding(.bottom, 12)
            
            
        } //: End of VStack
        .background(.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 0)
    }
}

struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipesData[0])
            .previewLayout(.sizeThatFits)
    }
}
