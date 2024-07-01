//
//  Extention.swift
//  Moamed
//
//  Created by Mohamed Shendy on 07/06/2024.
//

import UIKit

extension LoginVC {

     func createFrgotPasswordView(title: String,icon: String){
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 13, weight: .regular)
        button.setTitleColor(.lightGray, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
      
        button.widthAnchor.constraint(equalToConstant: 120).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        let iconImageView = UIImageView(image: UIImage(systemName: icon))
        iconImageView.tintColor = .gray
        iconImageView.translatesAutoresizingMaskIntoConstraints = false
       
        iconImageView.widthAnchor.constraint(equalToConstant: 24).isActive = true
        iconImageView.heightAnchor.constraint(equalToConstant: 24).isActive = true
        
        hStackView.addArrangedSubview(button)
        hStackView.addArrangedSubview(iconImageView)

    }
    
     func createRegisterView(){
        let button = UIButton(type: .system)
        button.setTitle("Create Account", for: .normal)
         button.setTitleColor(UIColor(resource: .btnDark), for: .normal)
        button.contentHorizontalAlignment = .left
        button.titleLabel?.font = .systemFont(ofSize: 13, weight: .regular)
        button.translatesAutoresizingMaskIntoConstraints = false
      
        button.widthAnchor.constraint(equalToConstant: 120).isActive = true
        button.heightAnchor.constraint(equalToConstant: 24).isActive = true
        
        
        let label = UILabel()
        label.text = "New on MEGA ?"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 13, weight: .regular)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        
        newOnMegaStackView.addArrangedSubview(label)
        newOnMegaStackView.addArrangedSubview(button)
    }
}

extension LoginVC{
    func setupNavigationBar() {
        title = "Log in"
        let rightButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancelBtnTapped))
        rightButton.tintColor = .white
        navigationItem.rightBarButtonItem = rightButton
    }

    @objc private func cancelBtnTapped() {
         print("Right button tapped")
     }
}
