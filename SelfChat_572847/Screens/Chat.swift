//
//  Chat.swift
//  SelfChat_572847
//
//  Created by Constantin Schulte-Kersmecke on 31.01.22.
//

import SwiftUI

struct Chat: View {
    @Binding var contact: Contact
    var body: some View {
        ZStack {
            List {
                ForEach(contact.chatItems) { object in
                    ChatItemView(item: object).frame(minWidth: 0,
                                                     maxWidth: .infinity,
                                                     minHeight: 0,
                                                     maxHeight: .infinity, alignment: object.isSender ? .trailing: .leading)
                }
            }
            .padding(.bottom, 90.0).shadow(radius: 3)
            NavigationLink(destination: EditChat(contact: $contact))
            { Text(Image(systemName: "plus.message")) }.buttonStyle(BigBlueButtonStyle()).padding().frame(minWidth: 0,maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment:.bottomTrailing)
            
        }
        
    }
}


