//
//  LottieView.swift
//  LottieAnimation
//
//  Created by Madalin Zaharia on 05.01.2023.
//

import Lottie
import SwiftUI

public struct LottieView: UIViewRepresentable {
    // MARK: - Properties
    var lottieFile: String
    var loopMode: LottieLoopMode

    public init(lottieFile: String, loopMode: LottieLoopMode) {
        self.lottieFile = lottieFile
        self.loopMode = loopMode
    }

    // MARK: - UIViewRepresentable
    public func makeUIView(context: Context) -> some UIView {
        let view = UIView()

        let animationView = LottieAnimationView(name: lottieFile)
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = loopMode
        animationView.play()

        view.addSubview(animationView)
        view.backgroundColor = .clear

        animationView.translatesAutoresizingMaskIntoConstraints = false
        animationView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        animationView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true

        return view
    }

    public func updateUIView(_ uiView: UIViewType, context: Context) {
        // not used
    }
}

struct LottieView_Previews: PreviewProvider {
    static var previews: some View {
        LottieView(lottieFile: "wallet-card-animation", loopMode: .loop)
    }
}
