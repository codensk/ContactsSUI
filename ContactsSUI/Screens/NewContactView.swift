//
//  NewContactView.swift
//  ContactsSUI
//
//  Created by SERGEY VOROBEV on 10.08.2021.
//

import SwiftUI

struct NewContactView: View {
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
                        TextField("Имя", text: $firstName)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        TextField("Фамилия", text: $lastName)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                }
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Телефон")
                        .fontWeight(.semibold)
                    TextField("Например, 89137532198", text: $phone)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Электронная почта")
                        .fontWeight(.semibold)
                    TextField("name@site.ru", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Добавить")
                }).setStyle()
                
                Spacer()
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        self.newContactState.toggle()
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
        NewContactView(newContactState: .constant(true))
    }
}
