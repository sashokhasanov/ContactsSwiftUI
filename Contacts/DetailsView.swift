//
//  DetailsView.swift
//  Contacts
//
//  Created by Сашок on 02.03.2022.
//

import SwiftUI

struct DetailsView: View {
    
    var person: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 150)
                    .padding()
                Spacer()
            }
            Label(person.phone, systemImage: "phone")
            Label(person.email, systemImage: "envelope")
        }
        .listStyle(.plain)
        .navigationBarTitle(person.fullName)
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(person: Person(name: "Peter", surname: "Parker", phone: "+79999999", email: "iamspiderman@marvel.com"))
    }
}
