//
//  ContentView.swift
//  UIKitSlidersImportedToSwiftUIProject
//
//  Created by Olga Yurchuk on 15.11.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var sliderValue = Float.random(in: 0 ... 100)
    var body: some View {
        VStack {
            SliderFromUIKit(sliderValue: $sliderValue)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
