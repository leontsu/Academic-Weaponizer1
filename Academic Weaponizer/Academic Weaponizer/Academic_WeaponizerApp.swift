//
//  Academic_WeaponizerApp.swift
//  Academic Weaponizer
//
//  Created by Leon Tsuboi on 9/26/23.
//

import SwiftUI

import Foundation

// Define the API endpoint URL
let apiUrl = URL(string: "https://api.example.com/data")!

// Create a URL request
var request = URLRequest(url: apiUrl)


@main
struct Academic_WeaponizerApp: App {
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
