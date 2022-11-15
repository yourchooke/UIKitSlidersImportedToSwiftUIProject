//
//  SliderFromUIKit.swift
//  UIKitSlidersImportedToSwiftUIProject
//
//  Created by Olga Yurchuk on 15.11.2022.
//

import SwiftUI

struct SliderFromUIKit: UIViewRepresentable {
    @Binding var sliderValue: Float
    let thumbAlpha: CGFloat
    
    func makeUIView(context: Context) -> UISlider {
        let slider = UISlider()
        slider.value = sliderValue
        slider.minimumValue = 0
        slider.maximumValue = 100
        
        return slider
    }
    
    func updateUIView(_ uiView: UISlider, context: Context) {
        uiView.value = sliderValue
        uiView.thumbTintColor = .blue.withAlphaComponent(thumbAlpha)
    }
    
}

struct SliderFromUIKit_Previews: PreviewProvider {
    static var previews: some View {
        SliderFromUIKit(sliderValue: .constant(10), thumbAlpha: 0.05)
    }
}
