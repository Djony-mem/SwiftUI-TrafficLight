//
//  Button.swift
//  SwiftUI TrafficLight
//
//  Created by Brubrusha on 12/10/20.
//

import SwiftUI

struct ButtonStyle: View {
    var text: String
     
    var body: some View {
        ZStack {
            Color(.white)
                .frame(width: 160, height: 70)
                .cornerRadius(40)
            Color(.blue)
                .frame(width: 150, height: 60)
                .cornerRadius(40)
            Text(text)
                .textCase(.uppercase)
                .foregroundColor(.white)
                .font(.title)
        }
    }
}

struct Button_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStyle(text: "start")
    }
}
