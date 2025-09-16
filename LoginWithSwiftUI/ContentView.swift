//
//  ContentView.swift
//  LoginWithSwiftUI
//
//  Created by Jin Zhang on 9/15/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100)
                    Spacer()
                }
                
                
                Image("home_picture")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 320)
                    .padding(.bottom, 40)
                
                Text("Hello!")
                    .font(.largeTitle)
                    .padding(.bottom, 12)
                    .bold()
                
                Text("Best place to write life and\nshare your journey experiences")
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 36)
                    .foregroundStyle(.gray)
                
                NavigationLink {
                    LoginScreen()
                } label: {
                    Text("LOGIN")
                        .frame(width: 280, height: 44)
                        .foregroundStyle(.white)
                        
                        .background(
                            LinearGradient(
                                gradient: Gradient(colors: [Color.blue, Color.purple]),
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                        .cornerRadius(6)
                }
                .padding(.bottom, 16)
                
                
                NavigationLink{
                    SignUpScreen()
                } label: {
                    Text("SIGNUP")
                        .frame(width: 280, height: 44)
                        .foregroundStyle(.blue)
                        .overlay{
                            RoundedRectangle(cornerRadius: 6)
                                .stroke()
                        }
                }
                    Spacer()
                }
                .padding()
            }
        
        }
}

#Preview {
    ContentView()
}
