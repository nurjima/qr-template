//
//  ScanHereViewController.swift
//  qr-template
//
//  Created by Nurzhamal Shaliyeva on 22.02.2023.
//

import UIKit
import SnapKit

class QRPaymentViewController: UIViewController {

    let scanHereView = QRPaymentView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        self.title = "RECEIVE PAYMENT"
        self.navigationController?.navigationBar.tintColor = .black

        view.addSubview(scanHereView)
    }
}
