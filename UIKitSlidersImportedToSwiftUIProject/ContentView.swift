//
//  ContentView.swift
//  UIKitSlidersImportedToSwiftUIProject
//
//  Created by Olga Yurchuk on 15.11.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var sliderValue = Float.random(in: 0 ... 100)
    @State private var alertPresented = false
    
    @State private var targetValue = Int.random(in: 0...100)
    
    var body: some View {
        VStack {
            Text("Подвиньте слайдер как можно ближе к \(Int(targetValue))")
            HStack {
                Text("0")
                SliderFromUIKit(sliderValue: $sliderValue, thumbAlpha: CGFloat(computeScore())/100)
                Text("100")
            }
            Button(action: {alertPresented.toggle()}) {
                Text("Проверь меня")
            }
            .alert(
                "Ваш результат",
                isPresented: $alertPresented,
                actions: {
                    
                }, message: {
                    Text("\(computeScore())")
                }
            )
            .padding()
            Button(action: {targetValue = Int.random(in: 0...100)}) {
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
