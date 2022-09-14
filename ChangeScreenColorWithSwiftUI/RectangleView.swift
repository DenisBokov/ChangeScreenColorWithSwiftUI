//
//  RectangleView.swift
//  ChangeScreenColorWithSwiftUI
//
//  Created by Denis Bokov on 12.09.2022.
//

import SwiftUI

struct RectangleView: View {
    
    @Binding var redValue: Double
    @Binding var greenValue: Double
    @Binding var blueValue: Double
    
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 350, height: 150)
                .foregroundColor(Color(red: redValue / 255, green: greenValue / 255.0, blue: blueValue / 255.0))
            .cornerRadius(20)
            Text("R: \(lround(redValue))"
                 + "  G: \(lround(greenValue))"
                 + "  B: \(lround(blueValue))")
        }
    }
}

struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleView(redValue: .constant(0), greenValue: .constant(0), blueValue: .constant(0))
    }
}
