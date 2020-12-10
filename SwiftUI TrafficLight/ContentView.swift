//
//  ContentView.swift
//  SwiftUI TrafficLight
//
//  Created by Brubrusha on 12/10/20.
//

import SwiftUI

struct ContentView: View {
    let text: String
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                ColorCircle(color: .red)
                ColorCircle(color: .yellow)
                ColorCircle(color: .green)
                Spacer()
                Button(text: "start")
                    .padding(.bottom)
            }
            .padding(.bottom)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(text: "")
    }
}
