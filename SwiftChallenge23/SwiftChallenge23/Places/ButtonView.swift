//
//  ButtonView.swift
//  SwiftChallenge23
//
//  Created by Marco Ramirez on 7/04/23.
//

//Defined a simple ButtonView component that displays an image and text inside a button view. It can be customized by passing different icon and text values.

import SwiftUI

struct ButtonView: View {
//declares two constant properties of type String that are used to store the icon and text to be displayed in the button.
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
