//
//  ViewController.swift
//  qr-template
//
//  Created by Nurzhamal Shaliyeva on 16.02.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setUp()
        setLayout()
    }
}

extension ViewController {
    func setUp(){
        
        for i in 1...3{
            let button = UIButton()
            button.backgroundColor = .systemBlue
            button.layer.cornerRadius = 15
            button.setTitle("Template \(i)", for: .normal)
            button.setTitleColor(.white, for: .normal)
            button.addTarget(self, action: #selector(openTemplate(_:)), for: .touchUpInside)
            button.tag = i
            view.addSubview(button)
        }
    }
    func setLayout(){
       
            let buttonWidth: CGFloat = 250
            let buttonHeight: CGFloat = 50
            let spacing: CGFloat = 20
        
        for(index, button) in view.subviews.enumerated(){
            button.snp.makeConstraints { make in
                make.centerX.equalToSuperview()
                make.top.equalToSuperview().offset(150 + (buttonHeight + spacing) * CGFloat(index))
                make.width.equalTo(buttonWidth)
                make.height.equalTo(buttonHeight)
            }
        }
}
    
    @objc func openTemplate(_ sender: UIButton){
        
        let buttonIndex = sender.tag

        switch buttonIndex{
        case 1:
            let firstVC = QRInstViewController()
            navigationController?.pushViewController(firstVC, animated: true)
        case 2:
            let secondVC = QRPaymentViewController()
            navigationController?.pushViewController(secondVC, animated: true)
        case 3:
            let thirdVC = MyQRViewController()
            navigationController?.pushViewController(thirdVC, animated: true)
        default:
            break
        }

    }
    
}

