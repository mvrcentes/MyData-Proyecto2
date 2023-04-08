//
//  RecordsView.swift
//  SwiftChallenge23
//
//  Created by Marco Ramirez on 7/04/23.
//

import SwiftUI

private let registers = [
    Register(id: 1, Doctorname: "Doctor name", entity: "Hospital name", date: Date(), medicine: ["some medicine", "some medicine"], note: "lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
Register(id: 2, Doctorname: "Marco Ramirez", entity: "Hospital 1", date: Date(), medicine: ["some medicine", "some medicine", "something else"], note: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
Register(id: 3, Doctorname: "Antonio Tizandie", entity: "Hospital 2", date: Date(), medicine: ["some medicine"], note: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
]
struct RecordsView: View {
    var body: some View {
        NavigationView {
            List (registers, id: \.id){ register in
                NavigationLink(destination: RecordDetailedViw(register: register)) {
                    RecordCard(registers: register)
                }
            }
            .navigationTitle("Records")
        }
    }
}

struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        RecordsView()
    }
}

