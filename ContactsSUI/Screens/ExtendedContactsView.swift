//
//  ExtendedContactsView.swift
//  ContactsSUI
//
//  Created by SERGEY VOROBEV on 10.08.2021.
//

import SwiftUI

struct ExtendedContactsView: View {
    @EnvironmentObject var dataManager: DataManager
    
    var body: some View {
        NavigationView {
            
            List {
                ForEach(dataManager.persons, id: \.self) { contact in 
                    Section(header:
                                Text(contact.fullName)
                                .fontWeight(.semibold)
                    ) {
                        NavigationLink(destination: ContactDetailsView(contact: contact)) {
                            ExtendedContactCellView(contact: contact)
                        }
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle("Extended")
        }
    }
}

struct ExtendedContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ExtendedContactsView().environmentObject(DataManager())
    }
}
