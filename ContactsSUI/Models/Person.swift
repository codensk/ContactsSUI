//
//  Person.swift
//  ContactsSUI
//
//  Created by SERGEY VOROBEV on 10.08.2021.
//

struct Person: Hashable, Identifiable {
    let id: Int
    let firstName: String
    let lastName: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}
