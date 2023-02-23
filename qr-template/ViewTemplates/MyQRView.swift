//
//  MyQRView.swift
//  qr-template
//
//  Created by Nurzhamal Shaliyeva on 22.02.2023.
//

import UIKit
import SnapKit

class MyQRView: UIView {

    let myView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.clipsToBounds = true
        return view
    }()
    
    let userImg: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "sun")
        
        image.layer.masksToBounds = false
        image.clipsToBounds = true
        image.layer.cornerRadius = 50
        image.contentMode = .scaleAspectFit
        image.layer.borderColor = UIColor.white.cgColor
        image.layer.borderWidth = 1
        return image
    }()
    
    let qrImg: UIImageView = {
        let image = UIImageView()
        
        image.image = UIImage(named: "qr")
        image.layer.cornerRadius = 10
        image.backgroundColor = UIColor.white.withAlphaComponent(0.5)
        image.isOpaque = false
        
        return image
    }()
    
    let nameUser: UILabel = {
        let lbl = UILabel()
        lbl.text = "Davy Rangser ✅"
        lbl.textAlignment = .center
        lbl.textColor = .white
        lbl.font = UIFont.boldSystemFont(ofSize: 18)
        return lbl
    }()
    
    let scanBtn: UIButton = {
        let button = UIButton()
        let image = UIImage(systemName: "camera.viewfinder")?.withTintColor(.white, renderingMode: .alwaysOriginal)
        button.setImage(image,for: .normal)
        button.setTitle("  Scan QR Code", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        
        
        button.layer.cornerRadius = 7
        button.backgroundColor = .clear
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension MyQRView {
    func setupLayout() {
        addSubview(myView)
        myView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(100)
            make.centerY.equalToSuperview()
            make.left.equalTo(27)
            make.width.equalTo(340)
            make.height.equalTo(580)
        }
        
        myView.addSubview(userImg)
        userImg.snp.makeConstraints { make in
            make.top.equalTo(myView.snp.top).offset(30)
            make.centerX.equalToSuperview()
            make.width.height.equalTo(100)
        }
        
        myView.addSubview(nameUser)
        nameUser.snp.makeConstraints { make in
            make.top.equalTo(userImg.snp.bottom).offset(17)
            make.centerX.equalToSuperview()
        }
        
        myView.addSubview(qrImg)
        qrImg.snp.makeConstraints { make in
            make.top.equalTo(nameUser.snp.bottom).offset(30)
            make.centerX.equalTo(myView)
            make.width.height.equalTo(290)
        }
        
        myView.addSubview(scanBtn)
        scanBtn.snp.makeConstraints { make in
            make.width.equalTo(qrImg.snp.width)
            make.height.equalTo(35)
            make.top.equalTo(qrImg.snp.bottom).offset(15)
            make.centerX.equalTo(myView)
        }
    }
}
