//
//  ContentView.swift
//  Academic Weaponizer
//
//  Created by Leon Tsuboi on 9/26/23.
//

import SwiftUI

let deviceBg = #colorLiteral(red: 0.1529411765, green: 0.2156862745, blue: 0.3019607843, alpha: 1)

struct ContentView: View {
    var body: some View {

            ZStack {
                Color(deviceBg)
                    .ignoresSafeArea()
                
                VStack(alignment: .leading){
                    Text("WEDNESDAY, OCT 4")
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.867, green: 1.0, blue: 1.0))
                        .multilineTextAlignment(.leading)
                    
                    
                    HStack {
                        Text("HOME")
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
                    
                    Text("TIME WITH US")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.867, green: 1.0, blue: 1.0))
                        .multilineTextAlignment(.leading)
                    
                    ZStack{
                        Rectangle()
                            .frame(height: 170.0)
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.617, green: 0.696, blue: 0.751)/*@END_MENU_TOKEN@*/)
                            .cornerRadius(20.0)
                        
                        Text("1 hour 30 min")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 0.867, green: 1.0, blue: 1.0))
                            .frame(width: 300.0, height: 100.0)
                    }
                    
                    Spacer()
                    
                    Text("POPULAR TUTORS")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.867, green: 1.0, blue: 1.0))
                        .multilineTextAlignment(.leading)
                    
                    List {
                        ForEach((1...4), id: \.self) {
                            Text("\(Image(systemName: "person.crop.circle")) Person \($0)")
                            .listRowBackground(/*@START_MENU_TOKEN@*/Color(red: 0.616, green: 0.696, blue: 0.751)/*@END_MENU_TOKEN@*/)
                            }
                        }
                            .frame(height: 170.0)
                            .background(/*@START_MENU_TOKEN@*/Color(red: 0.616, green: 0.696, blue: 0.751)/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color(red: 0.867, green: 1.0, blue: 1.0))
                            .scrollContentBackground(.hidden)
                            .cornerRadius(20.0)
                            .listStyle(PlainListStyle())


                    
                    Spacer()
                    
                    Text("CALL HISTORY")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.867, green: 1.0, blue: 1.0))
                        .multilineTextAlignment(.leading)
                    
                        List {
                            ForEach((1...4), id: \.self) {
                                Text("\(Image(systemName: "person.crop.circle")) Person \($0)")
                                .listRowBackground(/*@START_MENU_TOKEN@*/Color(red: 0.616, green: 0.696, blue: 0.751)/*@END_MENU_TOKEN@*/)
                                }
                            }
                                .frame(height: 170.0)
                            	.background(/*@START_MENU_TOKEN@*/Color(red: 0.616, green: 0.696, blue: 0.751)/*@END_MENU_TOKEN@*/)
                                .foregroundColor(Color(red: 0.867, green: 1.0, blue: 1.0))
                            	.scrollContentBackground(.hidden)
                            	.cornerRadius(20.0)
                            	.listStyle(PlainListStyle())
                }
                .padding(.all)
            }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
