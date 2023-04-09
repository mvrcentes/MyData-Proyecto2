//
//  RegisterMoreInfo.swift
//  SwiftChallenge23
//
//  Created by Marco Ramirez on 7/04/23.
//

/**
 A view that displays additional information about a medical record, including a list of medicines and a note.
 
 - Parameters:
    - medicine: An array of strings representing the medicines prescribed in the record.
    - note: A string representing any additional notes included in the record.
 
 This view is used in `RecordDetailedViw` to display additional information about a `Register` object.
 
 Example:
 let moreInfo = RegisterMoreInfo(medicine: ["something", "something", "something"], note: "lorem")
 */

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

