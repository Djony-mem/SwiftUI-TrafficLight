//
//  ColorCircle.swift
//  SwiftUI TrafficLight
//
//  Created by Brubrusha on 12/10/20.
//

import SwiftUI

struct ColorCircle: View {
    let color: UIColor
    let opacity: Double

    var body: some View {
        Color(color)
            .frame(width: 150, height: 150)
            .clipShape(Circle())
            .opacity(opacity)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .padding()
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .red, opacity: 0.3 )
    }
}
