//
//  SignUpViewModel.swift
//  LoginWithSwiftUI
//
//  Created by Jin Zhang on 9/15/25.
//

import Foundation
class SignUpViewModel: ObservableObject {
    @Published var emailIdForSignUp: String = ""
    @Published var passwordForSignUp: String = ""
    @Published var userName: String = ""

    func isValidEmailPassword()-> Bool{
        if emailIdForSignUp.isEmpty || passwordForSignUp.isEmpty {
            print("Please input email and password.")
            return false
        }
        
        if !emailIdForSignUp.isValidEmail(){
            print("Please input valid email.")
            return false
        }
        
        return true
    }
}


