//
//  ScanHereView.swift
//  
//
//  Created by Nurzhamal Shaliyeva on 22.02.2023.
//

import UIKit

class QRPaymentView: UIView {
    
    let mainView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemBackground
        view.layer.cornerRadius = 10
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 0.5
        view.layer.shadowOffset = .zero
        view.layer.shadowRadius = 10
        return view
    }()
    
    let qrImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "qr")
        return image
    }()
    
    let tokenLbl: UILabel = {
        let label = UILabel()
        label.text = "eyJhbGci0iJIUZI1NiIsIn5cCI6JzdWIiOiIx"
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .lightGray
        label.textAlignment = .center
        return label
    }()
    
    let moneyLbl: UILabel = {
        let label = UILabel()
        label.text = "$10.00"
        label.font = UIFont.boldSystemFont(ofSize: 45)
        label.textColor = UIColor(red: 89/255, green: 116/255, blue: 147/255, alpha: 1)
        label.textAlignment = .center
        return label
    }()
    
    let incrementLbl: UILabel = {
        let label = UILabel()
        label.text = "–"
        label.font = UIFont.systemFont(ofSize: 45)
        label.textColor = .lightGray
        return label
    }()
    
    let decrementLbl: UILabel = {
        let label = UILabel()
        label.text = "+"
        label.font = UIFont.systemFont(ofSize: 35)
        label.textColor = .lightGray
        return label
    }()
    
    let walletBtn: UIButton = {
        let button = UIButton()
        let image = UIImage(systemName: "wallet.pass.fill")?.withTintColor(.white, renderingMode: .alwaysOriginal)
        button.setImage(image, for: .normal)
        button.setTitle("   Ethereum Wallet", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.textAlignment = .center
        button.layer.cornerRadius = 17
        button.backgroundColor = .black

        return button
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setView()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension QRPaymentView {
    func setView() {
        addSubview(mainView)
        mainView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(150)
            make.centerY.equalToSuperview()
            make.left.equalTo(27)
            make.width.equalTo(340)
            make.height.equalTo(500)
        }
        
        mainView.addSubview(qrImage)
        qrImage.snp.makeConstraints { make in
            make.width.height.equalTo(290)
            make.top.equalTo(mainView.snp.top).offset(23)
            make.centerX.equalTo(mainView)
        }
        
        mainView.addSubview(tokenLbl)
        tokenLbl.snp.makeConstraints { make in
            make.top.equalTo(qrImage.snp.bottom).offset(4)
            make.centerX.equalTo(mainView)
        }
        
        mainView.addSubview(moneyLbl)
        moneyLbl.snp.makeConstraints { make in
            make.top.equalTo(tokenLbl.snp.bottom).offset(45)
            make.centerX.equalTo(mainView)

        }
        
        mainView.addSubview(incrementLbl)
        incrementLbl.snp.makeConstraints { make in
            make.top.equalTo(tokenLbl.snp.bottom).offset(45)
            make.left.equalTo(mainView.snp.left).inset(63)
        }
        
        mainView.addSubview(decrementLbl)
        decrementLbl.snp.makeConstraints { make in
            make.top.equalTo(tokenLbl.snp.bottom).offset(49)
            make.right.equalTo(mainView.snp.right).inset(65)
        }
        
        addSubview(walletBtn)
        walletBtn.snp.makeConstraints { make in
            make.top.equalTo(mainView.snp.bottom).offset(30)
            make.width.equalTo(mainView.snp.width)
            make.height.equalTo(90)
            make.left.equalTo(mainView)
            
        }
    }
    
}
