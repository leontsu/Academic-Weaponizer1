//
//  MainView.swift
//  Academic Weaponizer
//
//  Created by Leon Tsuboi on 10/16/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {

        TabView {
            ContentView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            CheckerView()
                .tabItem {
                    Label("AI Checker", systemImage: "pencil")
                }
            CallView()
                .tabItem {
                    Label("Call", systemImage: "phone.fill")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
