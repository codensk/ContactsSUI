//
//  ExtendedContactCellView.swift
//  ContactsSUI
//
//  Created by SERGEY VOROBEV on 10.08.2021.
//

import SwiftUI

struct ExtendedContactCellView: View {
    var contact: Person
    
    var body: some View {
        VStack(alignment: .leading) {
            CellRowView(cellIcon: "phone", cellValue: contact.fullName)
            CellRowView(cellIcon: "envelope", cellValue: contact.email)
        }
    }
}

struct ExtendedContactCellView_Previews: PreviewProvider {
    static var previews: some View {
        ExtendedContactCellView(contact:
                                    Person(
                                        firstName: "Sergey",
                                        lastName: "Vorobev",
                                        email: "rusbear28@yandex.ru",
                                        phone: "89137532198"
                                    ))
    }
}
