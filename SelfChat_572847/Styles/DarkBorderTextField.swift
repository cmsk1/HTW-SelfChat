//
//  DarkBorderTextField.swift
//  SelfChat_572847
//
//  Created by Constantin Schulte-Kersmecke on 31.01.22.
//

import SwiftUI

struct DarkBorderTextField: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(5)
            .background(
                RoundedRectangle(cornerRadius: 8, style: .continuous)
                    .stroke(.gray, lineWidth: 1)
            ).padding(.trailing)
    }
}
