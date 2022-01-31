//
//  Contact.swift
//  SelfChat_572847
//
//  Created by Constantin Schulte-Kersmecke on 28.01.22.
//

import Foundation

struct Contact: Codable, Identifiable, Equatable{
    var id = UUID()
    var name: String
    var color: String
    var chatItems: [ChatItem]
}
