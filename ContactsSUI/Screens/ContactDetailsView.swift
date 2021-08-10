//
//  ContactDetailsView.swift
//  ContactsSUI
//
//  Created by SERGEY VOROBEV on 10.08.2021.
//

import SwiftUI

struct ContactDetailsView: View {
    var contact: Person
    
    var body: some View {
        VStack(spacing: 50) {
            Spacer()
            
            Image("avatar")
                .resizable()
                .frame(width: 110, height: 110, alignment: .center)
            
            
            List {
                Section {
                    CellRowView(cellIcon: "phone", cellValue: contact.phone)
                    
                    CellRowView(cellIcon: "envelope", cellValue: contact.email)
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle(contact.fullName)
        }
    }
}

struct ContactDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailsView(contact:
                            Person(
                                id: 0,
                                firstName: "Sergey",
                                lastName: "Vorobev",
                                email: "rusbear28@yandex.ru",
                                phone: "89137532198"
                            ))
    }
}
