//
//  BigBlueButtonStyle.swift
//  SelfChat_572847
//
//  Created by Constantin Schulte-Kersmecke on 31.01.22.
//

import SwiftUI

struct BigBlueButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(width: 60, height: 60)
            .foregroundColor(.white)
            .font(.system(size: 25))
            .background(.blue)
            .clipShape(Circle())
    }
}
