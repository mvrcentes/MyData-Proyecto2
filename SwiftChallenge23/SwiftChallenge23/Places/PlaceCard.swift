//
//  PlaceCard.swift
//  SwiftChallenge23
//
//  Created by Marco Ramirez on 7/04/23.
//

/**
 A SwiftUI View that displays a card with an entity name.
 
 Use this View to display an entity name on a colored card with a fixed size.
 
 Example usage:
 - Parameters:
     - entity: The name of the entity to display on the card.
 
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
            .frame(width: 150, height: 100, alignment: .center)
        }
}

struct PlaceCard_Previews: PreviewProvider {
    static var previews: some View {
        PlaceCard(entity: "hospital 1")
    }
}

