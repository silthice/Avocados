//
//  AppView.swift
//  Avocados
//
//  Created by Giap on 18/01/2023.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            AvocadosView()
                .tabItem {
                    Image("tabicon-branch")
                    Text("Avocados")
                }//: AvocadosView
            ContentView()
                .tabItem {
                    Image("tabicon-book")
                    Text("Recipes")
                }//: ContentView
            RipeningStagesView()
                .tabItem {
                    Image("tabicon-avocado")
                    Text("Ripening")
                }//: RipeningStagesView
            SettingsView()
                .tabItem {
                    Image("tabicon-settings")
                    Text("Settings")
                }//: SettingsView
        }//: TabView
        .edgesIgnoringSafeArea(.top)
        .accentColor(Color.primary)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
