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
            HStack {
                SliderView(value: $redValue, textColor: .red, colorSlider: .red)
                ColorTextFild(value: $redTextFild)
                    .toolbar {
                        ToolbarItemGroup(placement: .keyboard) {
                            Spacer()
                            Button("Done") {
                                print("Click")
                            }
                        }
                    }
            }
            HStack {
                SliderView(value: $greenValue, textColor: .green, colorSlider: .green)
                ColorTextFild(value: $greenTextFild)
            }
            HStack {
                SliderView(value: $blueValue, textColor: .blue, colorSlider: .blue)
                ColorTextFild(value: $blueTextFild)
            }
            Spacer()
        }
        .padding()
        .onAppear {
           setValue(for: redTextFild, greenTextFild, blueTextFild)
        }
    }
    
    private func string(from value: Double) -> String {
        String(format: "%.f", value)
    }
    
    private func setValue(for textFilds: String...) {
        textFilds.forEach { textFild in
            switch textFild {
            case redTextFild: redTextFild = string(from: Double(Int(redValue * 255.0)))
            case greenTextFild: greenTextFild = string(from: Double(Int(greenValue * 255.0)))
            default: blueTextFild = string(from: Double(Int(blueValue * 255.0)))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
