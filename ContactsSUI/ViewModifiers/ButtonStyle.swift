//
//  ButtonStyle.swift
//  ContactsSUI
//
//  Created by SERGEY VOROBEV on 10.08.2021.
//

import SwiftUI

struct ButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color.white)
            .padding(8)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.blue)
                    .frame(minWidth: 140)
                    .setShadow(opacity: 0.3)
            )
    }
}

extension Button {
    func setStyle() -> some View {
        modifier(ButtonStyle())
    }
}
