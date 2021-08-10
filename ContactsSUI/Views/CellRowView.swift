//
//  CellRowView.swift
//  ContactsSUI
//
//  Created by SERGEY VOROBEV on 10.08.2021.
//

import SwiftUI

struct CellRowView: View {
    var cellIcon: String
    var cellValue: String
    
    var body: some View {
        HStack {
            Image(systemName: cellIcon)
                .foregroundColor(.gray)
            Text(cellValue)
        }
    }
}

struct CellRowView_Previews: PreviewProvider {
    static var previews: some View {
        CellRowView(cellIcon: "phone", cellValue: "Name")
    }
}
