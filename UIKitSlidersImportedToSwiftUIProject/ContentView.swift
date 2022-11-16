//
//  ContentView.swift
//  UIKitSlidersImportedToSwiftUIProject
//
//  Created by Olga Yurchuk on 15.11.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var sliderValue = Float.random(in: 0 ... 100)
    @State private var targetValue = Int.random(in: 0...100)
    
    var body: some View {
        VStack {
            Text("Подвиньте слайдер как можно ближе к \(Int(targetValue))")
            SliderFromUIKit(sliderValue: $sliderValue, thumbAlpha: CGFloat(computeScore())/100)
            Button(action: {}) {
                Text("Проверь меня")
            }
            .padding()
            Button(action: {}) {
                Text("Начать заново")
            }
        }
        .padding()
    }
    
    private func computeScore() -> Int {
        let difference = abs(lround(Double(sliderValue)) - targetValue)
        return 100 - difference
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
