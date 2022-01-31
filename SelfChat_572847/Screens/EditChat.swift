//
//  EditChat.swift
//  SelfChat_572847
//
//  Created by Constantin Schulte-Kersmecke on 31.01.22.
//


import SwiftUI

struct EditChat: View {
    @Environment(\.dismiss) var dismiss
    
    @Binding var contact: Contact
    @State private var input: String = ""
    @State private var isSender: Bool = true
    
    var body: some View {
        
        List{
            HStack{
                TextField("Nachricht eingeben", text: $input).textFieldStyle(DarkBorderTextField())
                Button(action: { addChatItem() }){
                    Text(Image(systemName: "paperplane"))
                }.buttonStyle(SmallBlueButtonStyle())
            }.padding(.vertical)
            HStack{
                Toggle(isOn: $isSender) {
                    Text("Sender")
                }
            }
        }.listStyle(GroupedListStyle())
    }
    
    // Setzt ein neues Chat Item und schließt das Fenster
    func addChatItem() -> Void {
        if !input.isEmpty {
            let item = ChatItem(text: input, isSender: isSender)
            contact.chatItems.append(item)
            input = ""
        }
        dismiss()
        
    }
}
