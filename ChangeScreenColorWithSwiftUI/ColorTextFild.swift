//
//  ColorTextFild.swift
//  ChangeScreenColorWithSwiftUI
//
//  Created by Denis Bokov on 13.09.2022.
//

import SwiftUI

struct ColorTextFild: View {
    
    @Binding var value: String
    
    var body: some View {
        TextField("", text: $value)
            .frame(width: 60)
            .textFieldStyle(.roundedBorder)

    }
}

struct ColorTextFild_Previews: PreviewProvider {
    static var previews: some View {
        ColorTextFild(value: .constant("Hello!"))
    }
}
