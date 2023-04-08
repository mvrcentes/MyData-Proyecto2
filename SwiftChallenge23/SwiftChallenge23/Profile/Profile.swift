//
//  Profile.swift
//  SwiftChallenge23
//
//  Created by Marco Ramirez on 7/04/23.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        VStack (alignment: .leading){
            HStack {
                Image(systemName: "person.fill").resizable().frame(width: 100, height: 100, alignment: .center)
                    .cornerRadius(10)
                    .padding(40)
                Text("Name Name")
                    .font(.title)
            }
            
            VStack (alignment: .leading){
                VStack(alignment: .leading){
                    Text("Weight").font(.system(size: 24)).bold()
                    Text("134 lb")
                }
                VStack(alignment: .leading){
                    Text("Body mass index").font(.system(size: 24)).bold()
                    Text("21.01 BMI")
                }
                VStack(alignment: .leading){
                    Text("Height").font(.system(size: 24)).bold()
                    Text("174 cm")
                }
                VStack(alignment: .leading){
                    Text("Addictions").font(.system(size: 24)).bold()
                    Text("N/A")
                }
            }.alignmentGuide(.leading) { d in d[.leading] }
            
            Spacer()
        }.padding(35)
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}

