//
//  ContactCellView.swift
//  ContactsSUI
//
//  Created by SERGEY VOROBEV on 10.08.2021.
//

import SwiftUI

struct ContactCellView: View {
    var contact: Person
    
    var body: some View {
        HStack {
            Text(contact.fullName)
            
            Spacer()
        }
    }
}

struct ContactCellView_Previews: PreviewProvider {
    static var previews: some View {
        ContactCellView(contact:
                            Person(
                                id: 0,
                                firstName: "Sergey",
                                lastName: "Vorobev",
                                email: "rusbear28@yandex.ru",
                                phone: "89137532198"
                            )
        )
    }
}
