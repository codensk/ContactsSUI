//
//  CustomTextField.swift
//  ContactsSUI
//
//  Created by SERGEY VOROBEV on 10.08.2021.
//

import SwiftUI

struct CustomTextField: View {
    var placeHolder: String = ""
    
    @Binding var value: String
    
    var body: some View {
        TextField(placeHolder, text: $value)
            .textFieldStyle(RoundedBorderTextFieldStyle())
    }
}

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextField(value: .constant(""))
    }
}
