//
//  ContentView.swift
//  ChangeScreenColorWithSwiftUI
//
//  Created by Denis Bokov on 12.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redValue = Double.random(in: 0...1)
    @State private var greenValue = Double.random(in: 0...1)
    @State private var blueValue = Double.random(in: 0...1)
    
    @State private var redTextFild = ""
    @State private var greenTextFild = ""
    @State private var blueTextFild = ""
    
    var body: some View {
        VStack {
            // MARK: - Rectangle
            RectangleView(redValue: $redValue, greenValue: $greenValue, blueValue: $blueValue)
            
            // MARK: - Slider
            
            SliderView(value: $redValue, textFild: $redTextFild, textColor: .red)
            
            
            SliderView(value: $greenValue, textFild: $greenTextFild, textColor: .green)
            
            
            SliderView(value: $blueValue, textFild: $blueTextFild, textColor: .blue)
            
            Spacer()
        }
        .padding()
    }
    
    private func string(from value: Double) -> String {
        String(format: "%.2f", value)
    }
    
    private func setValue(for textFilds: String...) {
        textFilds.forEach { textFild in
            switch textFild {
            case redTextFild: redTextFild = string(from: redValue)
            case greenTextFild: greenTextFild = string(from: greenValue)
            default: blueTextFild = string(from: blueValue)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
