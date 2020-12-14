//
//  ContentView.swift
//  SwiftUI TrafficLight
//
//  Created by Brubrusha on 12/10/20.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    @State private var text = "start"
    
    @State private var redLightAlpha = 0.5
    @State private var yellowLightAlpha = 0.5
    @State private var greenLightAlgha = 0.5
    
    @State private var currentLight = CurrentLight.red
    
    private func buttonPressed() {
        let lightOn: Double = 1
        let lightOff: Double = 0.5
        self.text = "next"
        
        switch currentLight {
        case .red:
            print("HI i am heare")
            greenLightAlgha = lightOff
            redLightAlpha = lightOn
            currentLight = .yellow
        case .yellow:
            print("yellow Hi")
            redLightAlpha = lightOff
            yellowLightAlpha = lightOn
            currentLight = .green
        case .green:
            print("green Hi")
            yellowLightAlpha = lightOff
            greenLightAlgha = lightOn
            currentLight = .red
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


extension ContentView {
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            
            VStack {
                ColorCircle(color: .red, opacity: redLightAlpha)
                ColorCircle(color: .yellow, opacity: yellowLightAlpha)
                ColorCircle(color: .green, opacity: greenLightAlgha)
                
                Spacer()
                
                Button(action: { buttonPressed() }) {
                    ButtonStyle(text: text)
                }
            }
            .padding(.bottom)
        }
    }
    
}
