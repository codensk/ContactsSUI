//
//  ContentView.swift
//  ContactsSUI
//
//  Created by SERGEY VOROBEV on 10.08.2021.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var dataManager: DataManager
        
    var body: some View {
        TabView {
            ContactsView()
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Contacts")
                }
            
            ExtendedContactsView()
                .tabItem {
                    Image(systemName: "rectangle.stack.person.crop.fill")
                    Text("Extended")
                }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().environmentObject(DataManager())
    }
}
