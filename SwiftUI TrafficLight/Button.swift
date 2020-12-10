//
//  Button.swift
//  SwiftUI TrafficLight
//
//  Created by Brubrusha on 12/10/20.
//

import SwiftUI

struct Button: View {
    let text: String
    
    var body: some View {
        ZStack {
            Color(.white)
                .frame(width: 154, height: 64)
                .cornerRadius(10)
            Color(.blue)
                .frame(width: 150, height: 60)
                .cornerRadius(15)
            Text(text)
                .textCase(.uppercase)
                .foregroundColor(.white)
                .font(.title)
        }
    }
}

struct Button_Previews: PreviewProvider {
    static var previews: some View {
        Button(text: "start")
    }
}
