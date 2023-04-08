//
//  ButtonView.swift
//  SwiftChallenge23
//
//  Created by Marco Ramirez on 7/04/23.
//

import SwiftUI

struct ButtonView: View {
    let icon: String
    let text: String
    
    var body: some View {
        Button {
            
        } label: {
            HStack {
                Image(systemName: icon)
                Text(text)
            }
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(icon: "car", text: "Drive")
    }
}

