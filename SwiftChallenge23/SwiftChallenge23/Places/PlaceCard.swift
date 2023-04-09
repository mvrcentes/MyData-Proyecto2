//
//  PlaceCard.swift
//  SwiftChallenge23
//
//  Created by Marco Ramirez on 7/04/23.
//

/**
 A view that displays a button with an image and a text.
 
 Use this view to display a button with a predefined image and text. The ButtonView struct declares two constant properties of type String that are used to store the icon and text to be displayed in the button. The view uses the Button and HStack views to display the icon and text next to each other in the button.
 Example:
 let button = ButtonView(icon: "car", text: "Drive")
 
 - Parameters:
 - icon: A string that represents the name of the system image to be used as the icon for the button.
 - text: A string that represents the text to be displayed next to the icon on the button.
 */

import SwiftUI

struct PlaceCard: View {
    let entity: String
    var body: some View {
        
            ZStack {
                RoundedRectangle(cornerRadius: 4.0)
                    .foregroundColor(.blue)
                Text(entity)
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(15)
            }
        }
}

struct PlaceCard_Previews: PreviewProvider {
    static var previews: some View {
        PlaceCard(entity: "hospital 1")
    }
}
