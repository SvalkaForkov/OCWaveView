//
//  ViewController.swift
//  Example
//
//  Created by Emannuel Carvalho on 15/03/17.
//  Copyright © 2017 OC. All rights reserved.
//

import UIKit
import OCWaveView

@IBDesignable
class ViewController: UIViewController {

    @IBOutlet weak var waveView: WaveView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }
    
    override func prepareForInterfaceBuilder() {
        configureView()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    func configureView() {
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [#colorLiteral(red: 0.364705890417099, green: 0.0666666701436043, blue: 0.968627452850342, alpha: 1.0), #colorLiteral(red: 0.854901969432831, green: 0.250980406999588, blue: 0.47843137383461, alpha: 1.0)].map({ $0.cgColor })
        view.layer.insertSublayer(gradient, at: 0)
    }

    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let value = touches.first?.location(in: view).x {
            waveView.value = value
        }
    }

}

