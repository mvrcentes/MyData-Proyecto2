//
//  PlaceView.swift
//  SwiftChallenge23
//
//  Created by Marco Ramirez on 7/04/23.
//

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
                        }
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

