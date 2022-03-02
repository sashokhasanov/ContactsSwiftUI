//
//  SectionedListView.swift
//  Contacts
//
//  Created by Сашок on 03.03.2022.
//

import SwiftUI

struct SectionedListView: View {
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons) { person in
                Section(header: Text(person.fullName)) {
                    Label(person.phone, systemImage: "phone")
                    Label(person.email, systemImage: "envelope")
                }
            }
            .navigationBarTitle("Contact list")
        }
    }
}

struct SectionedListView_Previews: PreviewProvider {
    static var previews: some View {
        SectionedListView(persons: Person.getPersonsList())
    }
}
