//
//  SignUpScreen.swift
//  LoginWithSwiftUI
//
//  Created by Jin Zhang on 9/15/25.
//

import SwiftUI

struct SignUpScreen: View {
        @State var userName: String = ""
        @State var emailId: String = ""
        @State var password: String = ""
    @Environment(\.dismiss) var dismiss
    
        var body: some View {
            VStack {
            
                HStack{
                    VStack(alignment: .leading)  {
                        Text("Hi!")
                            .font(.largeTitle)
                            .bold()
                        Text("Create a new account")
                            .font(.title3)
                            .foregroundStyle(Color(red: 90/255, green: 90/255, blue: 150/255))
                    }
                    Spacer()
                }
                
                .padding(.bottom, 80)
                
                
                TextField("Username",text: $userName)
                    .foregroundStyle(Color(red: 90/255, green: 90/255, blue: 150/255)).foregroundStyle(Color(red: 90/255, green: 90/255, blue: 200/255))
                Divider()
                    .padding(.bottom, 48)
                
                
                TextField("EmailId",text: $emailId)
                    .foregroundStyle(Color(red: 90/255, green: 90/255, blue: 150/255)).foregroundStyle(Color(red: 90/255, green: 90/255, blue: 200/255))
                Divider()
                    .padding(.bottom, 48)
                
                SecureField("Password",text: $password)
                Divider()
                    .padding(.bottom, 48)
                
                NavigationLink{
                    HomeScreen(homeUserName: userName)
                } label: {
                    Text("LOGIN")
                        .foregroundColor(.white)
                        .frame(width: 280, height: 44)
                        .background(LinearGradient(colors: [Color.blue, Color.purple], startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(6)
                    
                }
                .padding(.bottom, 48)
                
                
                
                HStack{
                    VStack{
                        Divider()
                            
                    }
                    Text("Or")
                        .padding(.leading, 12)
                        .padding(.trailing, 12)
                    VStack{
                        Divider()
                    }
                    
                }.padding(.bottom, 40)
                
                Text("Social Media Login")
                    .foregroundStyle(Color(red: 90/255, green: 90/255, blue: 150/255))
                    .padding(.bottom, 8)
                
                HStack(spacing: 40){
                    
                    Image("google")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40)
                    Image("facebook")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40)
                    Image("apple")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40)
                }
                
                Spacer()
                HStack {
                    Text("Already have an account?")
                    NavigationLink{
                        LoginScreen()
                    } label: {
                        Text("Login")
                            .foregroundColor(.blue)
                    }
                    
                }
                
            }
            .padding(.leading, 40)
            .padding(.trailing, 40)
            .navigationBarBackButtonHidden(true)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading: Button(action: {
                dismiss()
            }){
                Image("back_arrow")
                    .resizable()
                    .scaledToFit()
                    .frame(width:32)
         
                
            }
            )
            
        
    }
}

#Preview {
    NavigationStack{
        SignUpScreen()
    }
}
