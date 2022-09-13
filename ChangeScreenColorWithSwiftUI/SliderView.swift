//
//  SliderView.swift
//  ChangeScreenColorWithSwiftUI
//
//  Created by Denis Bokov on 12.09.2022.
//

import SwiftUI

struct SliderView: View {
    
    @Binding var value: Double
 
    let textColor: Color
    let colorSlider: Color
    
    var body: some View {
        HStack(spacing: 30) {
            Text("\(Int(value * 255.0))").foregroundColor(textColor)
            Slider(value: $value)
                .accentColor(colorSlider)
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(value: .constant(0.0), textColor: .red, colorSlider: .red)
    }
}
