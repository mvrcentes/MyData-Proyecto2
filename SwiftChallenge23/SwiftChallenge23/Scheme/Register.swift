//
//  Register.swift
//  SwiftChallenge23
//
//  Created by Marco Ramirez on 7/04/23.
//

/**
A model that represents a medical register.

Use this model to represent a medical register with the following properties:
- Parameters:
 - id: An integer that represents the unique identifier of the register.
 - Doctorname: A string that represents the name of the doctor who created the register.
 - entity: A string that represents the name of the hospital or medical entity where the register was created.
 - date: A Date object that represents the date when the register was created.
 - medicine: An array of strings that represents the medicine prescribed in the register.
 - note: A string that represents additional notes or comments about the register.

 This model implements the Identifiable protocol, which means it has an id property that uniquely identifies each register.

Example:
let register = Register(id: 1, Doctorname: "Marco Ramirez", entity: "Hospital 1", date: Date(), medicine: ["some medicine"], note: "lorem ipsum dolor sit amet")
*/

import SwiftUI

struct Register: Identifiable {
    var id: Int
    var Doctorname: String
    var entity: String
    var date: Date
    var medicine: [String]
    var note: String
}

