//
//  ConstantS.swift
//  Moamed
//
//  Created by Mohamed Shendy on 07/06/2024.
//

import Foundation

class ConstantS{

    static let icons = Icons()
    static let st = AppTitles()

    struct Icons{
        var emailImg = "envelope"
        var passImg = "lock"
        var frgPassicon = "questionmark.circle"
    }
    
    struct AppTitles{
        var title = "MEGA"
        var subTitle = "ThE PRIVACY COMPANY"
        var emailErrorMsg = "Enter Valid email"
        var passErrorMsg = "Enter Valid password"
        var emptyFieldMsg = "This field cannot be empty"
        var email = "email"
        var password = "password"
        var btnLog = "Log in"
        var forgPass = "Forgot password"
        var fatalError = "init(coder:) has not been implemented"
    }
    
}
