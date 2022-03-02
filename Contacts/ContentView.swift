//
//  ContentView.swift
//  Contacts
//
//  Created by Сашок on 02.03.2022.
//

import SwiftUI

struct ContentView: View {
    let persons = Person.getPersonsList()
    
    var body: some View {
        TabView {
            PlainListView(persons: persons)
                .tabItem {
                    Label("Contacts", systemImage: "person.3.fill")
                }
            SectionedListView(persons: persons)
                .tabItem {
                    Label("Numbers", systemImage: "phone.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
