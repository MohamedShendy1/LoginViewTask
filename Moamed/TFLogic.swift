//
//  LoginViewModel.swift
//  Moamed
//
//  Created by Mohamed Shendy on 07/06/2024.
//

import UIKit
enum FieldType {
    case name
    case password
}
class TFLogic{
    
    var fieldType: FieldType

    var text: String? {
        didSet {
            validate()
        }
    }
    
    var errorMessage: String? {
        didSet {
            onErrorMessageChange?(errorMessage)
        }
    }
    
    var onErrorMessageChange: ((String?) -> Void)?
   
    init(fieldType: FieldType) {
           self.fieldType = fieldType
       }
    
    private func validate() {
        guard let text = text, !text.isEmpty else {
            errorMessage = ConstantS.st.emptyFieldMsg
            return
        }
        
        switch fieldType {
        case .name:
            if text.count < 3 {
                errorMessage = ConstantS.st.emailErrorMsg
            } else {
                errorMessage = nil
            }
        case .password:
            if text.count < 6 {
                errorMessage = ConstantS.st.passErrorMsg
            } else {
                errorMessage = nil
            }
        }
    }
    
 
}
