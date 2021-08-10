//
//  ContactsSUIApp.swift
//  ContactsSUI
//
//  Created by SERGEY VOROBEV on 10.08.2021.
//

import SwiftUI

@main
struct ContactsSUIApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView().environmentObject(DataManager())
        }
    }
}
