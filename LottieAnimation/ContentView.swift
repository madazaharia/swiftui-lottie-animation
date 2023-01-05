//
//  ContentView.swift
//  LottieAnimation
//
//  Created by Madalin Zaharia on 05.01.2023.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        LottieView(lottieFile: "wallet-card-animation", loopMode: .loop)
            .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
