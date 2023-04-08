//
//  RegisterMoreInfo.swift
//  SwiftChallenge23
//
//  Created by Marco Ramirez on 7/04/23.
//

import SwiftUI

struct RegisterMoreInfo: View {
    let medicine: [String]
    let note: String
    
    var body: some View {
        VStack (alignment: .leading, spacing: 5){
            Text("Medicine").bold().font(.title)
            VStack{
                ForEach(medicine, id: \.self) { med in
                    Text(med)
                }
            }
            Text("Note").bold().font(.title)
            VStack{
                Text(note)
            }
        }
    }
}

struct RegisterMoreInfo_Previews: PreviewProvider {
    static var previews: some View {
        RegisterMoreInfo(medicine: ["something", "something", "something"], note: "lorem")
    }
}

