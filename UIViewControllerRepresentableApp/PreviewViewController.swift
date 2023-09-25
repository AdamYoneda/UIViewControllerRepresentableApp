//
//  PreviewViewController.swift
//  UIViewControllerRepresentableApp
//
//  Created by Adam Yoneda on 2023/09/25.
//

import UIKit

final class PreviewViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }

    private func configure() {
        view.backgroundColor = .systemCyan
        
        let bubbleView = BubbleView(frame: .zero)
        bubbleView.intendedPurpose = .bbs
        view.addSubview(bubbleView)
        
        bubbleView.translatesAutoresizingMaskIntoConstraints = false
        bubbleView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        bubbleView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        bubbleView.widthAnchor.constraint(equalToConstant: 300).isActive = true
        bubbleView.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
}

import SwiftUI

struct PreViewController_Wrapper: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> PreviewViewController {
        let vc = PreviewViewController()
        return vc
    }
    
    func updateUIViewController(_ uiViewController: PreviewViewController, context: Context) {
        // とりあえず何も書かない
    }
}

struct PreviewViewController_Preview: PreviewProvider {
    static var previews: some View {
        return PreViewController_Wrapper()
    }
}
