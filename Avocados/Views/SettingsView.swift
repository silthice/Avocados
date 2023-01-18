//
//  SettingsView.swift
//  Avocados
//
//  Created by Giap on 18/01/2023.
//

import SwiftUI

struct SettingsView: View {
    
    //MARK: - PROPERTIES
    @State private var enableNotification: Bool = true
    @State private var backgroundRefresh: Bool = true
    
    //MARK: - BODY
    var body: some View {
        
        VStack(alignment: .center, spacing: 0, content: {
            //MARK: - HEADER
            VStack(alignment: .center, spacing: 5, content: {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(radius: 8, x: 0, y: 4)
                
                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenAdaptive"))
            }) //: End of VStack
            .padding()
            
            Form {
                //MARK: - SECTION #1
                Section(header: Text("General Settings")) {
                    Toggle(isOn: $enableNotification, label: {
                        Text("Enable Notifications")
                    })
                    
                    Toggle(isOn: $backgroundRefresh, label: {
                        Text("Background Refresh")
                    })
                }
                
                //MARK: - SECTION #2
                Section(header: Text("Application")) {
                    if enableNotification {
                        HStack {
                            Text("Product")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("Avocado Recipes")
                        }
                        HStack {
                            Text("Compatibility")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("Iphone & Ipad")
                        }
                        HStack {
                            Text("Developer")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("Giap")
                        }
                        HStack {
                            Text("Version")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("1.0.0")
                        }
                    } else {
                        HStack {
                            Text("Personal Message")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("Happy Coding 👍")
                        }
                    }
                    
                }
            }
        })
        .frame(maxWidth: 640)
    }
}

//MARK: - PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
