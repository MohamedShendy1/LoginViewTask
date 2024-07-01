//
//  AutheaderView.swift
//  Moamed
//
//  Created by Mohamed Shendy on 06/06/2024.
//

import UIKit

class AutheaderView: UIView {
    
    private func setupUI() {
        self.view.addSubview(UIView)
        UIView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            UIView. topAnchor.constraint(equalTo: self.view.topAnchor), UIView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor), UIView. leadingAnchor.constraint(equalTo: self.view.leadingAnchor), UIView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            
            UIView.centerXAnchor.constraint (equalTo: self.view.centerXAnchor),
            UIView.centerYAnchor.constraint(equalTo:
                                                self.view.centerYAnchor),
            UIView.widthAnchor.constraint (equalToConstant Double), UIView.heightAnchor.constraint(equalToConstant: Double),
        ])}
}
