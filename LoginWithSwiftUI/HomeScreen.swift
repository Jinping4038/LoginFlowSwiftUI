//
//  HomeScreen.swift
//  LoginWithSwiftUI
//
//  Created by Jin Zhang on 9/15/25.
//

import SwiftUI

struct HomeScreen: View {
    @State var homeUserName: String = ""
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
