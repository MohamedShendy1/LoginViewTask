//
//  LoginVC.swift
//  Moamed
//
//  Created by Mohamed Shendy on 07/06/2024.
//

import UIKit

class LoginVC: UIViewController {

    var vStackView: UIStackView = {
        let sV = UIStackView()
        sV.axis = .vertical
        sV.alignment = .fill
        sV.distribution = .equalSpacing
        sV.spacing = 16
        return sV
    }()
    
    let hStackView: UIStackView = {
        let hS = UIStackView()
        hS.axis = .horizontal
        hS.alignment = .center
        hS.spacing = 3
        hS.translatesAutoresizingMaskIntoConstraints = false
        return hS
    }()
    
    let newOnMegaStackView: UIStackView = {
        let hS = UIStackView()
        hS.axis = .horizontal
        hS.alignment = .center
        hS.spacing = 3
        hS.translatesAutoresizingMaskIntoConstraints = false
        return hS
    }()

    
    var loginBtn: UIButton = {
        let btn = UIButton()
        btn.layer.cornerRadius = 10
        btn.clipsToBounds = true
        btn.backgroundColor = UIColor(resource: .btn)
        btn.titleLabel?.textColor = .white
        btn.setTitle(ConstantS.st.btnLog, for: .normal)
        return btn
    }()
    
    private let headerView = AutheaderView(title: ConstantS.st.title, subTitle: ConstantS.st.subTitle)
    
    private let emailTF = CustomTF(icon: UIImage(systemName: ConstantS.icons.emailImg), placeholder:ConstantS.st.email)
    private let PasswordTF = CustomTF(icon: UIImage(systemName: ConstantS.icons.passImg), placeholder: ConstantS.st.password)
    
    private let emailVM = TFLogic(fieldType: .name)
    private let passwordVM = TFLogic(fieldType: .password)

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        
        view.backgroundColor = UIColor(named: "bgColor")
        setupStackView()
        createFrgotPasswordView(title: ConstantS.st.forgPass, icon: ConstantS.icons.frgPassicon)
        createRegisterView()

        bindViewModels()
    }
    
    private func setupStackView() {
        self.view.addSubview(headerView)
        self.view.addSubview(emailTF)
        self.view.addSubview(PasswordTF)
        self.view.addSubview(hStackView)
        self.view.addSubview(loginBtn)
        self.view.addSubview(newOnMegaStackView)


        headerView.translatesAutoresizingMaskIntoConstraints = false
        emailTF.translatesAutoresizingMaskIntoConstraints = false
        PasswordTF.translatesAutoresizingMaskIntoConstraints = false
        hStackView.translatesAutoresizingMaskIntoConstraints = false
        loginBtn.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            self.headerView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            self.headerView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
            self.headerView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),
            
            self.emailTF.topAnchor.constraint(equalTo: headerView.safeAreaLayoutGuide.bottomAnchor, constant: 30),
            self.emailTF.centerXAnchor.constraint(equalTo: headerView.safeAreaLayoutGuide.centerXAnchor),
            self.emailTF.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
            self.emailTF.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),
            
            self.PasswordTF.topAnchor.constraint(equalTo: emailTF.bottomAnchor, constant: 30),
            self.PasswordTF.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            self.PasswordTF.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
            self.PasswordTF.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),


           
            self.hStackView.topAnchor.constraint(equalTo: self.PasswordTF.bottomAnchor,constant: 20),
            self.hStackView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            self.hStackView.centerYAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerYAnchor),
            self.hStackView.heightAnchor.constraint(equalToConstant: 24),


            
            self.loginBtn.topAnchor.constraint(equalTo: hStackView.bottomAnchor, constant: 20),
            self.loginBtn.widthAnchor.constraint(equalToConstant: 120),
            self.loginBtn.heightAnchor.constraint(equalToConstant: 50),
            self.loginBtn.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor),
            
            
            self.newOnMegaStackView.topAnchor.constraint(equalTo: self.loginBtn.bottomAnchor,constant: 20),
            self.newOnMegaStackView.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor),

        ])
    }
    
    private func bindViewModels() {
        emailTF.textField.addTarget(self, action: #selector(firstTextFieldEditingChanged(_:)), for: .editingChanged)
        emailVM.onErrorMessageChange = { [weak self] errorMessage in
            self?.emailTF.setError(errorMessage)
        }
        
        PasswordTF.textField.addTarget(self, action: #selector(secondTextFieldEditingChanged(_:)), for: .editingChanged)
        passwordVM.onErrorMessageChange = { [weak self] errorMessage in
            self?.PasswordTF.setError(errorMessage)
        }
    }
    
    @objc private func firstTextFieldEditingChanged(_ textField: UITextField) {
        emailVM.text = textField.text
    }
    
    @objc private func secondTextFieldEditingChanged(_ textField: UITextField) {
        passwordVM.text = textField.text
    }
}
