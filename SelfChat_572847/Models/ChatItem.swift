//
//  ChatItem.swift
//  SelfChat_572847
//
//  Created by Constantin Schulte-Kersmecke on 31.01.22.
//

import Foundation

struct ChatItem: Codable, Identifiable, Equatable {
    var id = UUID()
    var text: String
    var isSender: Bool
}
