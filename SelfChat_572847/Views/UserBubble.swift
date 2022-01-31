//
//  UserBubble.swift
//  SelfChat_572847
//
//  Created by Constantin Schulte-Kersmecke on 28.01.22.
//

import SwiftUI

struct UserBubble: View {
    @Binding var contact: Contact
    var body: some View {
        NavigationLink(destination: Chat(contact: $contact))
        { Text(contact.name.uppercased())
                .font(.largeTitle)
                .frame(width: 100, height: 100)
                .foregroundColor(.white)
            .overlay(Circle().stroke(Color.white, lineWidth: 18)).background(Color(hexString: contact.color)).clipShape(Circle()) }
    }
}
