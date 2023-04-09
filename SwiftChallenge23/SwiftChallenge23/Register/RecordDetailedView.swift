//
//  RecordDetailedView.swift
//  SwiftChallenge23
//
//  Created by Marco Ramirez on 7/04/23.
//

/**
A view that displays detailed information about a medical record.

Use this view to display detailed information about a medical record, including the doctor's name, image, medicine prescribed, and notes. The RecordDetailedView struct accepts a Register object as a parameter and uses the RegisterMoreInfo view to display the medicine and notes for the record.

Example:
let record = RecordDetailedViw(register: Register(id: 1, Doctorname: "Marco Ramirez", entity: "Hospital 1", date: Date(), medicine: ["something"], note: "lorem"))
 - Parameters:
    - registers: An instance of the Register struct that contains information about the medical record to be displayed in the card. This includes the doctor's name, the hospital or medical entity where the record was created, the date of the record, a list of medicines, and any additional notes.
*/

import SwiftUI

struct RecordDetailedViw: View {
    var register: Register
        
    var body: some View {
        VStack (alignment: .leading){
            HStack {
                Image(systemName: "person.fill").resizable().frame(width: 50, height: 50, alignment: .center)
                //            .clipShape(Circle()).overlay(Circle().stroke(Color: .black, lineWidth: 5)).shadow(color: .black, radius: 10, x: 0.0, y: 0.0)
                VStack {
                    Text(register.Doctorname).font(.largeTitle)
                }.padding(15)
            }.padding(15)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 2))
            
            VStack (alignment: .leading) {
                RegisterMoreInfo(medicine: register.medicine, note: register.note)
            }
            Spacer()
        }
        .padding(15)
    }
}

struct RecordDetailedViw_Previews: PreviewProvider {
    static var previews: some View {
        RecordDetailedViw(
            register: Register(id: 1, Doctorname: "Marco Ramirez", entity: "Hospital 1", date: Date(), medicine: ["something"], note: "lorem"))
    }
}


