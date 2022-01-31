//
//  ChatItemView.swift
//  SelfChat_572847
//
//  Created by Constantin Schulte-Kersmecke on 31.01.22.
//

import SwiftUI
struct ChatItemView: View {
    let item: ChatItem
    var body: some View {
        if item.isSender {
            Text(item.text).padding().foregroundColor(.white).background(.blue).cornerRadius(35)
        } else {
            Text(item.text).padding().foregroundColor(.black).background(.gray).cornerRadius(35)
        }
    }
}

struct ChatItemView_Previews: PreviewProvider {
    static var previews: some View {
        ChatItemView(item: ChatItem(text: "Testeingabe", isSender: true))
    }
}
