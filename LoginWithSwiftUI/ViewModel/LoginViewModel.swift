//
//  LoginViewModel.swift
//  LoginWithSwiftUI
//
//  Created by Jin Zhang on 9/15/25.
//

import Foundation
class LoginViewModel: ObservableObject {
    @Published var emailId: String = ""
    @Published var password: String = ""

    func isValidEmailPassword()-> Bool{
        if emailId.isEmpty || password.isEmpty {
            print("Please input email and password.")
            return false
        }
        
        if !emailId.isValidEmail(){
            print("Please input valid email.")
            return false
        }
        
        return true
    }
}


extension String {
    func isValidEmail() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let predicate = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return predicate.evaluate(with: self)
    }
}
