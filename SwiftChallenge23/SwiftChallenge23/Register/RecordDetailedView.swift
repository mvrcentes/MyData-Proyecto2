//
//  RecordDetailedView.swift
//  SwiftChallenge23
//
//  Created by Marco Ramirez on 7/04/23.
//

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


