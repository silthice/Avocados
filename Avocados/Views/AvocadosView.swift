//
//  AvocadosView.swift
//  Avocados
//
//  Created by Giap on 18/01/2023.
//

import SwiftUI

struct AvocadosView: View {
    //MARK: - PROPERTIES
    @State private var pulsateAnimation: Bool = false
    
    //MARK: - BODY
    var body: some View {
        VStack {
            Spacer()
            
            Image("avocado")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 240, height: 240, alignment: .center)
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 12, x: 0, y: 8)
                .scaleEffect(pulsateAnimation ? 1 : 0.9)
                .opacity(pulsateAnimation ? 1 : 0.9)
            
            VStack {
                Text("Avocados".uppercased())
                    .font(.system(size: 42, weight: .bold, design: .serif))
                    .foregroundColor(.white)
                    .padding()
                    .shadow(color: Color("ColorBlackTransparentDark"), radius: 4, x: 0, y: 4)
                Text("""
    Creamy, green, and full of nutrients!
    Avocado is a powerhouse ingredient at any meal. Enjoy these handpicker avocado recipes for breakfast, lunch, dinner & more!
    """)
                .lineLimit(nil)
                .font(.system(.headline, design: .serif))
                .foregroundColor(Color("ColorGreenLight"))
                .multilineTextAlignment(.center)
                .lineSpacing(8)
                .frame(maxWidth: 640, minHeight: 120)
            } //: End of VStack
            .padding()
            
            
            Spacer()
        } //: End of VStack
        .background(
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
        )
        .edgesIgnoringSafeArea(.top)
        .onAppear() {
            withAnimation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true)){
                pulsateAnimation.toggle()
            }
        }
    }
}

//MARK: - PREVIEW
struct AvocadosView_Previews: PreviewProvider {
    static var previews: some View {
        AvocadosView()
//            .environment(\.colorScheme, .dark)
    }
}
