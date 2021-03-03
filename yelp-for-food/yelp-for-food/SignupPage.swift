//
//  SignupPage.swift
//  yelp-for-food
//
//  Created by Alberto Dominguez on 2/24/21.
//

import SwiftUI

struct SignupPage: View {
    var body: some View {
        NavigationView{
            VStack(spacing: 0){
                LoginForm(header: "Full Name", placeholder: "Johnny Bravo")
                LoginForm(header: "Email", placeholder: "Johnny.Bravo@gmail.com")
                LoginForm(header: "Password", placeholder: "********")
                LoginForm(header: "Confirm Password", placeholder: "********")
                NavigationLink(destination: HomePage()){
                    //                    Button(action: {}) {
                    Text("Create Account")
                        .frame(width: 250, height: 55, alignment: .center)
                        .background(Color(#colorLiteral(red: 0.9960784314, green: 0.7411764706, blue: 0.03529411765, alpha: 1)))
                        .foregroundColor(.white)
                        .font(Font.system(size: 18, weight: .bold))
                        .cornerRadius(15)
                    //                }
                }
                NavigationLink(destination: LoginPage()){
                    Text("Already have an account? Login")
                        .padding(.top, 10)
                }
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            .frame(width: screen.width-30, height: 550)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(color: Color(.black).opacity(0.25), radius: 25, x: 4, y: 8)
        }
    }
}

struct SignupPage_Previews: PreviewProvider {
    static var previews: some View {
        SignupPage()
    }
}
