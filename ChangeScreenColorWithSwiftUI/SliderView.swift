//
//  SliderView.swift
//  ChangeScreenColorWithSwiftUI
//
//  Created by Denis Bokov on 12.09.2022.
//

import SwiftUI

struct SliderView: View {
    
    @Binding var value: Double
    @Binding var textFild: String
 
    let textColor: Color
    
    var body: some View {
        HStack {
            Text("\(lround(value * 255.0))").foregroundColor(textColor)
            Slider(value: $value)
            Text("\(lround(value * 255.0))").foregroundColor(textColor)
            ColorTextFild(value: $textFild)
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(value: .constant(0.0), textFild: .constant("Hello"), textColor: .red)
    }
}
