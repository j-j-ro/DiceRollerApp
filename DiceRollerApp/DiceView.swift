//
//  DiceView.swift
//  MyApp
//
//  Created by staff on 10/20/26.
//

import SwiftUI

struct DiceView: View {
    @State private var numberOfPips: Int = 1
    
    var body: some View {
        Button() {
            withAnimation() { //ends with animation
                numberOfPips = Int.random(in: 1...6)
            }
        } label: {
            Image(systemName: "die.face.\(numberOfPips).fill")
                .resizable()
                .frame(width: 100, height: 100)
                .padding(.bottom)
                .aspectRatio(1, contentMode: .fit)
                .foregroundStyle(.black, .white)
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    DiceView()
}
