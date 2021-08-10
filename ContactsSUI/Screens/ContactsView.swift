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
            List(dataManager.chooseRandomData()) { contact in
                NavigationLink(destination: ContactDetailsView(contact: contact)) {
                    ContactCellView(contact: contact)
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        self.newContactState.toggle()
                    }, label: {
                        Image(systemName: "plus")
                    })
                    .sheet(isPresented: $newContactState, content: {
                        NewContactView(newContactState: $newContactState)
                    })
                }
            }
            .navigationBarTitle("Contacts")
        }
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView().environmentObject(DataManager())
    }
}
