//
//  InstView.swift
//  qr-template
//
//  Created by Nurzhamal Shaliyeva on 22.02.2023.
//

import UIKit
import SnapKit

class QRInstView: UIView {

    let rectView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white.withAlphaComponent(0.8)
        view.isOpaque = false
        view.layer.cornerRadius = 17
        view.clipsToBounds = true
        return view
    }()
    
    let qrImg: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "qr")
        return image
    }()
    
    let tagLbl: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "@QRCODE"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 25)
        return label
    }()

    let shareBtn: UIButton = {
        let button = UIButton()
        let image = UIImage(systemName: "square.and.arrow.up")?.withTintColor(.black, renderingMode: .alwaysOriginal)
        button.setImage(image,for: .normal)
        button.setTitle("  Share Via", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        
        button.layer.cornerRadius = 17
        button.backgroundColor = UIColor.white.withAlphaComponent(0.5)
        button.isOpaque = false
        
        return button
    }()
    
    let copyLinkBtn: UIButton = {
        let button = UIButton()
        let image = UIImage(systemName: "link")?.withTintColor(.black, renderingMode: .alwaysOriginal)
        button.setImage(image,for: .normal)
        button.setTitle("  Copy Link", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        
        button.layer.cornerRadius = 17
        button.backgroundColor = UIColor.white.withAlphaComponent(0.5)
        button.isOpaque = false
        
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

extension QRInstView {
    func setupLayout(){
        addSubview(rectView)
        rectView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(230)
            make.width.height.equalTo(340)
            make.left.equalToSuperview().offset(27)
        }
        
        rectView.addSubview(qrImg)
        qrImg.snp.makeConstraints { make in
            make.width.height.equalTo(290)
            make.centerX.equalTo(rectView)
            make.top.equalTo(rectView.snp.top).offset(15)
        }
        
        rectView.addSubview(tagLbl)
        tagLbl.snp.makeConstraints { make in
            make.centerX.equalTo(rectView)
            make.top.equalTo(qrImg.snp.bottom).inset(11)
        }
        
        addSubview(shareBtn)
        shareBtn.snp.makeConstraints { make in
            make.top.equalTo(rectView.snp.bottom).offset(10)
            make.left.equalTo(rectView.snp.left)
            make.width.equalTo(165)
            make.height.equalTo(50)
        }
        
        addSubview(copyLinkBtn)
        copyLinkBtn.snp.makeConstraints { make in
            make.top.equalTo(rectView.snp.bottom).offset(10)
            make.right.equalTo(rectView.snp.right)
            make.width.equalTo(165)
            make.height.equalTo(50)
        }
    }
}
