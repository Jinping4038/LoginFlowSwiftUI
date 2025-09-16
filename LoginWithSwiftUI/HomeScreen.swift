//
//  HomeScreen.swift
//  LoginWithSwiftUI
//
//  Created by Jin Zhang on 9/15/25.
//

import SwiftUI

struct HomeScreen: View {
    var homeUserName: String = ""
    var body: some View {
        VStack {
            Text("Hi, \(homeUserName) Welcome!")
                .font(.title2)
            Spacer()
        }
       
    }
}

#Preview {
    HomeScreen()
}
//
//struct HomeScreen: View {
//    @ObservedObject var signUpViewModel: SignUpViewModel
//
//    var body: some View {
//        VStack {
//            Text("Hi, \(signUpViewModel.userName) Welcome!")
//                .font(.title2)
//            Spacer()
//        }
//    }
//}
