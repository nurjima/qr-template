//
//  MyQRViewController.swift
//  qr-template
//
//  Created by Nurzhamal Shaliyeva on 22.02.2023.
//

import UIKit

class MyQRViewController: UIViewController {

    let myQRView = MyQRView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 32/255, green: 150/255, blue: 243/255, alpha: 1)
        self.title = "My QR Code"
        self.navigationController?.navigationBar.barStyle = UIBarStyle.black
        self.navigationController?.navigationBar.tintColor = .white

        view.addSubview(myQRView)
        setupIcon()
    
    }
    
    func setupIcon() {
        let imageView = UIImageView(image: UIImage(named: "eye"))
        let item = UIBarButtonItem(customView: imageView)
        self.navigationItem.rightBarButtonItem = item
    }
    

}
