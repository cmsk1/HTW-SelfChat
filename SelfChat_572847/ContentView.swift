//
//  ContentView.swift
//  SelfChat_572847
//
//  Created by Constantin Schulte-Kersmecke on 28.01.22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var datas = ReadData()
    
    var body: some View {
        VStack{
            NavigationView {
                ScrollView {
                    LazyVGrid(columns: [GridItem(.adaptive(minimum:120))]) {
                        ForEach(datas.users.indices) { idx in
                            UserBubble(contact: $datas.users[idx]).padding()
                        }
                    }.padding(.vertical).background(Color(hue: 0.078, saturation: 0.352, brightness: 1.0)).cornerRadius(10)
                }
                .padding().shadow(radius: 3).cornerRadius(50)
                .navigationTitle("Conversation")
            }
            Text("HTW WiSe 21/22")
                .font(.footnote)
        }.onChange(of: datas.users) { newState in
            // wenn sich die State ändert (durch das hinzufügen eines Chat Items), werden die Daten direkt als json gespeichert
            datas.writeData(data: newState)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
