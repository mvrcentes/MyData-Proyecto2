//
//  RecordCard.swift
//  SwiftChallenge23
//
//  Created by Marco Ramirez on 7/04/23.
//

/**
A view that displays a card containing the details of a medical record.

Use this view to display a card containing the details of a medical record, including the date, doctor's name, and entity associated with the record. The RecordCard struct declares a property of type Register that is used to store the details of the record to be displayed. The view uses the HStack and Spacer views to organize the details of the record in a horizontal layout.

Example:
let record = RecordCard(registers: Register(id: 1, Doctorname: "Marco Ramirez", entity: "Hospital 1", date: Date(), medicine: ["something"], note: "note"))
 
 - Parameters:
    - registers: An instance of the Register struct that contains information about the medical record to be displayed in the card. This includes the doctor's name, the hospital or medical entity where the record was created
*/

import SwiftUI

struct RecordCard: View {
    var registers: Register
    var body: some View {
        HStack {
            Text(DateFormatter.localizedString(from: registers.date, dateStyle: .short, timeStyle: .none))
            Spacer()
            Text(registers.Doctorname)
            Spacer()
            Text(registers.entity)
        }.padding(15)
    }
}

struct RecordCard_Previews: PreviewProvider {
    static var previews: some View {
        RecordCard(
            registers: Register(id: 1, Doctorname: "Marco Ramirez", entity: "Hospital 1", date: Date(), medicine: ["something"], note: "note")
        )
    }
}

