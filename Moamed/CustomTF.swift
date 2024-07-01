//
//  CustomTF.swift
//  Moamed
//
//  Created by Mohamed Shendy on 07/06/2024.
//

import UIKit

class CustomTF: UIView {
    
    private let iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = .gray
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let textField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .none
        textField.backgroundColor = .clear
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private let errorLabel: UILabel = {
        let label = UILabel()
        label.textColor = .red
        label.font = UIFont.systemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    init(icon: UIImage?, placeholder: String) {
        super.init(frame: .zero)
        self.backgroundColor = UIColor(named:"tfColor")
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.systemGray6.cgColor
        iconImageView.image = icon
        textField.placeholder = placeholder
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError(ConstantS.st.fatalError)
    }
    
    private func setupView() {
        addSubview(errorLabel)
        addSubview(iconImageView)
        addSubview(textField)
        
        NSLayoutConstraint.activate([
            iconImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            iconImageView.centerYAnchor.constraint(equalTo: textField.centerYAnchor),
            iconImageView.widthAnchor.constraint(equalToConstant: 24),
            iconImageView.heightAnchor.constraint(equalToConstant: 24),
            
            textField.leadingAnchor.constraint(equalTo: iconImageView.trailingAnchor, constant: 8),
            textField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            textField.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            
            errorLabel.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 8),
            errorLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            errorLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            errorLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8)
        ])
    }
    
    func setError(_ message: String?) {
        errorLabel.text = message
    }
    
    
}
