//
//  ColorTextFild.swift
//  ChangeScreenColorWithSwiftUI
//
//  Created by Denis Bokov on 13.09.2022.
//

import SwiftUI

struct ColorTextFild: View {
    
    @Binding var value: Double
    private let numberFormatter: NumberFormatter = {
        var nf = NumberFormatter()
        nf.numberStyle = .none
        return nf
    }()
    
    var body: some View {
        TextField("", value: $value, formatter: numberFormatter)
            .frame(width: 60)
            .textFieldStyle(.roundedBorder)
            .keyboardType(.decimalPad)
    }
}

struct ColorTextFild_Previews: PreviewProvider {
    static var previews: some View {
        ColorTextFild(value: .constant(0.0))
    }
}
