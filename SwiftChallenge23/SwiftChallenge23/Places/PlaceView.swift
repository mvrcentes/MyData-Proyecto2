//
//  PlaceView.swift
//  SwiftChallenge23
//
//  Created by Marco Ramirez on 7/04/23.
//

/**
 PlacesView is a SwiftUI view that displays a list of places along with buttons for navigation and calling.
 
 The view receives the places information through a private constant entities, which is a 2D array of strings that represents each place's information. Each inner array contains four elements: the place ID, name, location, and phone number. (This could be from a Database but the app don't have access to internet)
 
 The view consists of a ScrollView that displays the list of places as PlaceCard views arranged in a LazyVGrid with three columns. Each PlaceCard view is wrapped in a button that updates the selectedEntityIndex state variable to indicate which place is selected. The selected place's information is then displayed in the buttons below the list.
 

 - Parameters:
     - selectedEntityIndex: A state variable of type Int that represents the index of the selected place.
     - selectedEntity: An optional array of strings that represents the information of the selected place.

 Note: The view assumes that the entities array has at least one element.
 */

import SwiftUI

private let entities = [
    ["1","Hospital 1", "location 1", "phone 1"],
    ["2" ,"Hospital 2", "location 2", "phone 2"],
    ["3" ,"Hospital 3", "location 3", "phone 3"]
]

struct PlacesView: View {
    @State private var selectedEntityIndex: Int?
    
    private var selectedEntity: [String]? {
        guard let index = selectedEntityIndex, entities.indices.contains(index) else {
            return nil
        }
        return entities[index]
    }
    
    var body: some View {
        let columnLayout = Array(repeating: GridItem(), count: 3)
        
        VStack {
            ScrollView {
                LazyVGrid (columns: columnLayout){
                    ForEach(entities.indices, id: \.self) { index in
                        Button {
                            selectedEntityIndex = index
                        }  label: {
                            PlaceCard(entity: entities[index][1])
                        }.aspectRatio(1.5, contentMode: .fill)
                    }
                }.padding(15)
            }
            HStack {
                Spacer()
                ButtonView(icon: "car", text: selectedEntity?[2] ?? "")
                Spacer()
                ButtonView(icon: "phone", text: selectedEntity?[3] ?? "")
                Spacer()
            }.padding(15)
        }
    }
}

struct PlacesView_Previews: PreviewProvider {
    static var previews: some View {
        PlacesView()
    }
}
