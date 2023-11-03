//
//  CallView.swift
//  Academic Weaponizer
//
//  Created by Leon Tsuboi on 10/16/23.
//
/*
import SwiftUI
import Foundation

struct CallView: View {
    var body: some View {
        ZStack {
            Color(deviceBg)
                .ignoresSafeArea()
            
            Text("Call View")
                .foregroundColor(Color(red: 0.867, green: 1.0, blue: 1.0))
            
            
           
                    Button("Send SMS") {
                        sendSMS()
                    }
                }
            }

            func sendSMS() {
                // Define your Twilio credentials
                let accountSID = "SK93a1d266c0efb41630dd7b2c1d3e9bba"
                let authToken = "ef002dae518a9376d363a74b09ce90ae"

                // Define the URL for Twilio's API
                let urlString = "https://api.twilio.com/2010-04-01/Accounts/\(accountSID)/Messages.json"

                // Define the request body parameters
                let bodyParams = [
                    "From": "+14436371257",
                    "To": "+18082772353",
                    "Body": "Hello from SwiftUI!"
                ]

                // Create a URLRequest with the URL
                var request = URLRequest(url: URL(string: urlString)!)
                request.httpMethod = "POST"
                request.httpBody = bodyParams
                    .map { key, value in "\(key)=\(value)" }
                    .joined(separator: "&")
                    .data(using: .utf8)

                // Set up the request headers for basic authentication
                let basicAuthString = "\(accountSID):\(authToken)"
                let base64AuthString = Data(basicAuthString.utf8).base64EncodedString()
                request.setValue("Basic \(base64AuthString)", forHTTPHeaderField: "Authorization")

                // Create a URLSession data task to send the request
                let task = URLSession.shared.dataTask(with: request) { data, response, error in
                    if let error = error {
                        print("Error: \(error)")
                    } else if let data = data, let responseString = String(data: data, encoding: .utf8) {
                        print("Response: \(responseString)")
                    }
                }

                // Start the data task to send the request
                task.resume()
            }

            @main
            struct YourApp: App {
                var body: some Scene {
                    WindowGroup {
                        ContentView()
                    }
                }
            }

            
            
            
            
            
        }
    //}
    //}
    
    struct CallView_Previews: PreviewProvider {
        static var previews: some View {
            CallView()
        }
    }
*/

import SwiftUI
import Foundation


struct CallView: View {
    var body: some View {
        
        ZStack {
            Color(deviceBg)
                .ignoresSafeArea()
            
            VStack{
                
                HStack {
                    Text("Chat")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.867, green: 1.0, blue: 1.0))
                        .multilineTextAlignment(.leading)
                    
                    Spacer()
                    
                    Image(systemName: "person.crop.circle")
                        .resizable(resizingMode: .stretch)
                        .foregroundColor(Color(red: 0.867, green: 1.0, blue: 1.0))
                        .frame(width: 35.0, height: 35.0)
                }
                
                
                
                Spacer()
                
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
        }
        /*
        ZStack {

            Button("Send SMS") {
                sendSMS()
            }
            
            
            
        }
         */
    }
    
    func sendSMS() {
        // Define your Twilio credentials
        let accountSID = "SK93a1d266c0efb41630dd7b2c1d3e9bba"
        let authToken = "ef002dae518a9376d363a74b09ce90ae"

        // Define the URL for Twilio's API
        let urlString = "https://api.twilio.com/2010-04-01/Accounts/\(accountSID)/Messages.json"

        // Define the request body parameters
        let bodyParams = [
            "From": "+14436371257",
            "To": "+18082772353",
            "Body": "Hello from SwiftUI!"
        ]

        // Create a URLRequest with the URL
        var request = URLRequest(url: URL(string: urlString)!)
        request.httpMethod = "POST"
        request.httpBody = bodyParams
            .map { key, value in "\(key)=\(value)" }
            .joined(separator: "&")
            .data(using: .utf8)

        // Set up the request headers for basic authentication
        let basicAuthString = "\(accountSID):\(authToken)"
        let base64AuthString = Data(basicAuthString.utf8).base64EncodedString()
        request.setValue("Basic \(base64AuthString)", forHTTPHeaderField: "Authorization")

        // Create a URLSession data task to send the request
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                print("Error: \(error)")
            } else if let data = data, let responseString = String(data: data, encoding: .utf8) {
                print("Response: \(responseString)")
            }
        }

        // Start the data task to send the request
        task.resume()
    }
}

struct CallView_Previews: PreviewProvider {
    static var previews: some View {
        CallView()
    }
}


