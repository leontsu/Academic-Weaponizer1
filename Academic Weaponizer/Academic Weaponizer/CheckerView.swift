//
//  CheckerView.swift
//  Academic Weaponizer
//
//  Created by Leon Tsuboi on 10/16/23.
//

import SwiftUI



struct CheckerView: View {
    
    @State private var givenText: String = ""
    @State private var checkedText: String = ""
    
    var body: some View {
       
        ZStack {
            Color(deviceBg)
                .ignoresSafeArea()
            
            VStack{
                
                HStack {
                    Text("AI Essay Checker")
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
                
                HStack{
                    Text("Input")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.867, green: 1.0, blue: 1.0))
                        .multilineTextAlignment(.leading)
                    
                    Spacer()
                }
    
                VStack {
                    TextField(
                        "Paste here...",
                        text: $givenText,
                        axis: .vertical
                    )
                    .disableAutocorrection(true)
                    .lineLimit(10, reservesSpace: true)
                    .textFieldStyle(.roundedBorder)
                    
                }
                
                
                Button(action: {
                    print("Delete tapped!")
                    checkerFun()
                }) {
                    HStack {
                        Image(systemName: "checkmark")
                            .font(.title)
                        Text("CHECK")
                            .fontWeight(.semibold)
                            .font(.title)
                    }
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .padding()
                    .foregroundColor(.white)
                }
                
                
                Spacer()
                
                HStack{
                    Text("Output")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.867, green: 1.0, blue: 1.0))
                        .multilineTextAlignment(.leading)
                    
                    Spacer()
                }
                
                VStack {
                    TextField("",text: $checkedText,
                              axis: .vertical)
                        .disableAutocorrection(true)
                        .lineLimit(10, reservesSpace: true)
                        .textFieldStyle(.roundedBorder)
                    
                    }
                    .textFieldStyle(.roundedBorder)
                
                Spacer()
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
        }
    }
    
    func checkerFun() {
            let headers = [
                "content-type": "application/x-www-form-urlencoded",
                "X-RapidAPI-Key":
                "c2992f7b48msh79d0ceddcd8275dp15c210jsn7f898f25a609",
                "X-RapidAPI-Host": "grammarbot.p.rapidapi.com"
            ]
            //
            let postData = "text=\(givenText.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? "")&language=en-US"
            
            guard let url = URL(string: "https://grammarbot.p.rapidapi.com/check") else { return }
            
            var request = URLRequest(url: url)
            request.httpMethod = "POST"
            request.allHTTPHeaderFields = headers
            request.httpBody = postData.data(using: .utf8)
            
            URLSession.shared.dataTask(with: request) { data, response, error in
                if let error = error {
                    print("Error: \(error)")
                    return
                }
                
                guard let data = data else { return }
                if let responseString = String(data: data, encoding: .utf8) {
                    DispatchQueue.main.async {
                        self.checkedText = responseString
                    }
                }
            }
            .resume()
        }

    
}



struct CheckerView_Previews: PreviewProvider {
    static var previews: some View {
        CheckerView()
    }
}
