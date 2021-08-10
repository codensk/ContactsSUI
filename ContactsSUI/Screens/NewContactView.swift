//
//  NewContactView.swift
//  ContactsSUI
//
//  Created by SERGEY VOROBEV on 10.08.2021.
//

import SwiftUI

struct NewContactView: View {
    @EnvironmentObject var dataManager: DataManager
    
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var phone: String = ""
    @State private var email: String = ""
    
    @Binding var newContactState: Bool
    
    var body: some View {
        NavigationView {
            VStack(spacing: 13) {
                Spacer()
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Полное имя")
                        .fontWeight(.semibold)
                    
                    HStack {
                        CustomTextField(placeHolder: "Имя", value: $firstName)
                        CustomTextField(placeHolder: "Фамилия", value: $lastName)
                    }
                }
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Телефон")
                        .fontWeight(.semibold)
                    CustomTextField(placeHolder: "Например, 89137532198", value: $phone)
                }
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Электронная почта")
                        .fontWeight(.semibold)
                    CustomTextField(placeHolder: "name@site.ru", value: $email)
                }
                
                Spacer()
                
                Button(action: {
                    self.dataManager.appendContact(
                        Person(
                            firstName: firstName,
                            lastName: lastName,
                            email: phone,
                            phone: email)
                    )
                    
                    self.newContactState = false
                }, label: {
                    Text("Добавить")
                })
                .setStyle()
                
                Spacer()
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        self.newContactState = false
                    }, label: {
                        Text("Закрыть")
                    })
                }
            }
            .padding()
            .navigationBarTitle("Добавить контакт", displayMode: .inline)
        }
    }
}

struct NewContactView_Previews: PreviewProvider {
    static var previews: some View {
        NewContactView(newContactState: .constant(false)).environmentObject(DataManager())
    }
}
