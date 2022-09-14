//
//  ContentView.swift
//  ChangeScreenColorWithSwiftUI
//
//  Created by Denis Bokov on 12.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redValue = Double.random(in: 0...255)
    @State private var greenValue = Double.random(in: 0...255)
    @State private var blueValue = Double.random(in: 0...255)
    
    var body: some View {
        VStack {
            // MARK: - Rectangle
            RectangleView(redValue: $redValue, greenValue: $greenValue, blueValue: $blueValue)
            
            // MARK: - Slider
            SliderView(value: $redValue, textColor: .red, colorSlider: .red)
            SliderView(value: $greenValue, textColor: .green, colorSlider: .green)
            SliderView(value: $blueValue, textColor: .blue, colorSlider: .blue)
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
