//
//  InstViewController.swift
//  qr-template
//
//  Created by Nurzhamal Shaliyeva on 22.02.2023.
//

import UIKit

class QRInstViewController: UIViewController {

    let instView = QRInstView()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(instView)
        self.navigationController?.navigationBar.tintColor = .black
        instGradient()
    }
    
    func instGradient(){
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        
        let colorOne = UIColor.systemPink.cgColor
        let colorTwo = UIColor.systemBlue.cgColor
        
        gradientLayer.colors = [colorOne, colorTwo]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        
        view.layer.insertSublayer(gradientLayer, at: 0)
    }

}
