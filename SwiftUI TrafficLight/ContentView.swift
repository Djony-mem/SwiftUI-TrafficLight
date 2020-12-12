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
    @State var text = "start"
    
    private let lightOn: CGFloat = 1
    private let lightOff: CGFloat = 0.5
    
    @State var redLightAlpha: CGFloat = 0.5
    @State var yellowLightAlpha: CGFloat = 0.5
    @State var greenLightAlgha: CGFloat = 0.5
    
    @State var currentLight = CurrentLight.red
    
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                ColorCircle(color: .red, lightOffOrOn: redLightAlpha)
                ColorCircle(color: .yellow, lightOffOrOn: yellowLightAlpha)
                ColorCircle(color: .green, lightOffOrOn: greenLightAlgha)
                Spacer()
                Button(action: { buttonPressed() }) {
                    ButtonStyle(text: text)
                }
            }
            .padding(.bottom)
        }
    }
    
    
    func buttonPressed() {
        self.text = "next"
        
        switch currentLight {
        case .red:
            print("HI i am heare")
            greenLightAlgha = lightOff
            redLightAlpha = 1
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
