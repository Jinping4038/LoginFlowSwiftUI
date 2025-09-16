//
//  LoginScreen.swift
//  LoginWithSwiftUI
//
//  Created by Jin Zhang on 9/15/25.
//

import SwiftUI

struct LoginScreen: View {
  
    @Environment(\.dismiss) var dismiss
    @ObservedObject var loginViewModel = LoginViewModel()
    @State private var navigateToHome = false
//    @State private var errorMessage: String? = nil
    
    
    var body: some View {
        VStack {
            HStack{
                VStack(alignment: .leading)  {
                    Text("Welcome!")
                        .font(.largeTitle)
                        .bold()
                    Text("Sign in to continue")
                        .font(.title3)
                        .foregroundStyle(Color(red: 90/255, green: 90/255, blue: 150/255))
                }
                Spacer()
            }
            .padding(.bottom, 80)
            
            TextField("EmailId",text: $loginViewModel.emailId)
                .foregroundStyle(Color(red: 90/255, green: 90/255, blue: 150/255)).foregroundStyle(Color(red: 90/255, green: 90/255, blue: 200/255))
            Divider()
                .padding(.bottom, 60)
            
            SecureField("Password",text: $loginViewModel.password)
            Divider()
                .padding(.bottom, 60)
            
            Button{
                if loginViewModel.isValidEmailPassword(){
                    navigateToHome = true
                } else {
                    print("Login failed.")
                }
               
            } label: {
                Text("LOGIN")
                    .foregroundColor(.white)
                    .frame(width: 280, height: 44)
                    .background(LinearGradient(colors: [Color.blue, Color.purple], startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(6)
                
            }
            .padding(.bottom, 8)
            
            NavigationLink{
                FindPassword()
            } label: {
                Text("Forget Password?")
                    .foregroundColor(.blue)
            }
            .padding(.bottom, 40)
            
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
                Text("Don't have an account?")
                NavigationLink{
                    SignUpScreen()
                } label: {
                    Text("Sign up")
                        .foregroundColor(.blue)
                }
                
            }
            
        }
        
        .padding(.leading, 40)
        .padding(.trailing, 40)
        .navigationDestination(isPresented: $navigateToHome){
            HomeScreen(homeUserName: loginViewModel.emailId)}
        .navigationBarBackButtonHidden(true)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(leading: Button(action: {
            dismiss()
        }) {
            Image("back_arrow")
                .resizable()
                .scaledToFit()
                .frame(width:32)
     
            
        })
       
    }
}

#Preview {
    NavigationStack{
        LoginScreen()
    }
   
}
