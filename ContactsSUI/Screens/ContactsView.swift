//
//  ContactsView.swift
//  ContactsSUI
//
//  Created by SERGEY VOROBEV on 10.08.2021.
//

import SwiftUI

struct ContactsView: View {
    @EnvironmentObject var dataManager: DataManager
    
    @State private var newContactState: Bool = false

    var body: some View {
        NavigationView {
            List {
                ForEach(dataManager.persons, id: \.self) { contact in
                    NavigationLink(destination: ContactDetailsView(contact: contact)) {
                        ContactCellView(contact: contact)
                    }
                }
                .onDelete(perform: { indexSet in
                    dataManager.removeContact(index: indexSet)
                })
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        self.newContactState.toggle()
                    }, label: {
                        Image(systemName: "plus")
                    })
                }
            }
            .navigationBarTitle("Contacts")
        }
        .sheet(isPresented: $newContactState, content: {
            NewContactView(newContactState: $newContactState)
        })
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView().environmentObject(DataManager())
    }
}
