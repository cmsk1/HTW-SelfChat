//
//  SmallBlueButtonStyle.swift
//  SelfChat_572847
//
//  Created by Constantin Schulte-Kersmecke on 31.01.22.
//

import SwiftUI

struct SmallBlueButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(width: 25, height: 25)
            .foregroundColor(.white)
            .font(.system(size: 15))
            .background(.blue)
            .clipShape(Circle())
    }
}
