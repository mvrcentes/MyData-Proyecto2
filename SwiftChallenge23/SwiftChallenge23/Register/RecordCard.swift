//
//  RecordCard.swift
//  SwiftChallenge23
//
//  Created by Marco Ramirez on 7/04/23.
//

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

