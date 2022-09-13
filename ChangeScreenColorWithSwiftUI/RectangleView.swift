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
                .foregroundColor(Color(red: redValue, green: greenValue, blue: blueValue))
            .cornerRadius(20)
            Text("R: \(Int(redValue * 255.0))"
                 + "  G: \(Int(greenValue * 255.0))"
                 + "  B: \(Int(blueValue * 255.0))")
        }
    }
}

struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleView(redValue: .constant(0), greenValue: .constant(0), blueValue: .constant(0))
    }
}
