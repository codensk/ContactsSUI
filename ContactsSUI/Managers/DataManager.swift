//
//  DataManager.swift
//  ContactsSUI
//
//  Created by SERGEY VOROBEV on 10.08.2021.
//
import Combine
import Foundation

final class DataManager: ObservableObject {
    // MARK: - Properties
    @Published var persons: [Person] = []
    
    private var firstNames = ["James", "Robert", "John", "Michael", "William", "David", "Patricia", "Mary", "Jennifer", "Linda", "Alex", "John", "Rich", "Vladimir", "Vasyliy", "Brick"]
    private var lastNames = ["Wilson", "Burton", "Harris", "Stevens", "Robinson", "Lewis", "Walker", "Payne", "Baker", "Owen", "Fish", "Bird", "Pumpkin", "Grand", "Fisher", "Hunter"]
    private var emails = ["prog@yandex.ru", "home@yandex.ru", "work@yandex.ru", "sales@yandex.ru", "it@company.com", "ceo@apple.com", "hr@apple.com", "order@shop.ru", "ios@it.ru", "director@comp.com", "test1@test2.ru", "test2@test2.ru", "test3@test2.ru", "test4@test2.ru", "test5@test2.ru", "test6@test2.ru"]
    private var phones = ["89991112233", "89501234567", "89154704940", "89131112345", "89511234567", "88146623417", "89134566543", "89091237221", "89648765432", "89092223456", "89991112231", "89991112232", "89991112234", "89991112235", "89991112236", "89991112237"]
    
    init() {
        chooseRandomData()
    }
    
    func appendContact(_ contact: Person) {
        persons.append(contact)
    }
    
    func chooseRandomData() {
        var firstNames = firstNames.shuffled()
        var lastNames = lastNames.shuffled()
        var emails = emails.shuffled()
        var phones = phones.shuffled()
        
        let maxItems = firstNames.count
        
        for _ in 0..<maxItems {
            persons.append(Person(
                firstName: firstNames.removeFirst(),
                lastName: lastNames.removeFirst(),
                email: emails.removeFirst(),
                phone: phones.removeFirst()
            ))
        }
    }
}
