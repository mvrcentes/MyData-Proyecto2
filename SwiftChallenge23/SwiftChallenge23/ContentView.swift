//
//  ContentView.swift
//  SwiftChallenge23
//
//  Created by Marco Ramirez on 7/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            RecordsView().tabItem { Label("Registers", systemImage: "doc.text.below.ecg.fill") }
            
            PlacesView().tabItem { Label("Places", systemImage: "cross.case") }
            
            Profile().tabItem { Label("Profile", systemImage: "person.fill") }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
