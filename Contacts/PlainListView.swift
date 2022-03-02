//
//  PlainListView.swift
//  Contacts
//
//  Created by Сашок on 02.03.2022.
//

import SwiftUI

struct PlainListView: View {
    
    var persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons) { person in
                NavigationLink(destination: DetailsView(person: person)) {
                    Text(person.fullName)
                }
            }
            .listStyle(.plain)
            .navigationBarTitle("Contact list")
        }
    }
}

struct PlainListView_Previews: PreviewProvider {
    static var previews: some View {
        PlainListView(persons: Person.getPersonsList())
    }
}
