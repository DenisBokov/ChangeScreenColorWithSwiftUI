//
//  SliderView.swift
//  ChangeScreenColorWithSwiftUI
//
//  Created by Denis Bokov on 12.09.2022.
//

import SwiftUI

struct SliderView: View {
    
    @Binding var value: Double
    private let numberFormatter: NumberFormatter = {
        var nf = NumberFormatter()
        nf.numberStyle = .none
        return nf
    }()
 
    let textColor: Color
    let colorSlider: Color
    
    var body: some View {
        HStack {
            Text("\(lround(value))").foregroundColor(textColor)
            Slider(value: $value, in: 0...255, step: 1)
                .frame(width: 250)
                .accentColor(colorSlider)
            TextField("", value: $value, formatter: numberFormatter)
                .frame(width: 60)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.decimalPad)

        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(value: .constant(0.0), textColor: .red, colorSlider: .red)
    }
}
