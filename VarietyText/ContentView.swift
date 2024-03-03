//
//  ContentView.swift
//  VarietyText
//
//  Created by Nikita Koruts on 03.03.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var widthValue: Double = 300
    private let sliderBounds: ClosedRange<Double> = 100...300
    
    var body: some View {
        VStack {
            Text(attributedText)
                .font(.title)
                .multilineTextAlignment(.leading)
                .frame(width: widthValue, height: 200)
                .border(.red)
            Slider(value: $widthValue, in: sliderBounds)
        }
        .padding()
    }
    
    private var attributedText: AttributedString {
        var text1 = AttributedString("Марафон ")
        text1.font = .body
        text1.foregroundColor = .gray

        var text2 = AttributedString("по SwiftUI ")
        text2.font = .body
        
        var text3 = AttributedString("«Отцовский Пинок»")
        text3.font = .title.bold()
        text3.foregroundColor = .blue
        
        return text1 + text2 + text3
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
