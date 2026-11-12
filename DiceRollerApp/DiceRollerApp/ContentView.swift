import SwiftUI
import Playgrounds

struct ContentView: View {
    @State private var numberOfDice: Int = 1
    @State private var currentBackground: [Color] = [.gradientTop, .gradientBottom]
    @State var currentGradientIndex: Int = 0
    
    let gradientColorsOne: [Color] = [
        .gradientTop,
        .gradientBottom
    ]
    let gradientColorsTwo: [Color] = [
        .gradientTop2,
        .gradientBottom2
    ]
    
    let gradientColorsThree: [Color] = [
        .gradientTop3,
        .gradientBottom3
    ]
    
    let gradientColorsFour: [Color] = [
        .gradientTop4,
        .gradientBottom4
    ]
    
    var allGradients: [[Color]] {[gradientColorsOne, gradientColorsTwo, gradientColorsThree, gradientColorsFour]
    }

    
    var body: some View {
            VStack {
                Text("Dice Roller")
                    .font(.system(size: 40))
                    .fontWeight(.heavy)
                    .fontWidth(.expanded)
                    .foregroundStyle(.white)
                HStack {
                    ForEach(1...numberOfDice, id: \.description) { _ in
                        DiceView()
                    }
                }
                HStack {
                    Button("Remove Dice", systemImage: "minus.circle.fill") {
                        if numberOfDice == 1{
                            numberOfDice = 1
                        } else {
                            numberOfDice -= 1
                        }
                        
                    }
                    Button("Add dice", systemImage: "plus.circle.fill") {
                        if numberOfDice == 4 {
                            numberOfDice = 4
                        } else {
                            numberOfDice += 1
                        }
                    }
                }
                .labelStyle(.iconOnly)
                .font(.title)
                
                Button("Change Background") {
                    currentGradientIndex = Int.random(in: 0..<allGradients.count)
                }
            }
            .tint(.white)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Gradient(colors: allGradients[currentGradientIndex]))
        

    }
}

#Preview {
    ContentView()
}

#Playground {
    _ = 1 + 2
}
