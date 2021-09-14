//
//  Picker.swift
//  SayNo
//
//  Created by JEFERSON AMARAL on 13/09/21.
//

import SwiftUI

struct Picker: View {
    var colors = ["Red", "Green", "Blue", "Tartan"]
    @State private var selectedColor = "Red"

    enum Flavor: String, CaseIterable, Identifiable {
        case chocolate
        case vanilla
        case strawberry

        var id: String { self.rawValue }
    }
    
    @State private var selectedFlavor = Flavor.chocolate

    var body: some View {
        VStack {
            ColorPicker("Alignment Guides", selection: $bgColor)
        }
    }
}

struct Picker_Previews: PreviewProvider {
    static var previews: some View {
        Picker()
    }
}
