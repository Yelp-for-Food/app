//
//  LoginPage.swift
//  yelp-for-food
//
//  Created by Alberto Dominguez on 2/24/21.
//

import SwiftUI

struct LoginPage: View {
    var body: some View {
        NavigationView{
            VStack(spacing: 10){
                LoginForm(header: "Email", placeholder: "Johnny.Bravo@gmail.com")
                LoginForm(header: "Password", placeholder: "********")
                NavigationLink(destination: HomePage()) {
//                Button(action: {}) {
                    Text("Login")
                        .frame(width: 250, height: 55, alignment: .center)
                        .background(Color(#colorLiteral(red: 0.9960784314, green: 0.7411764706, blue: 0.03529411765, alpha: 1)))
                        .foregroundColor(.white)
                        .font(Font.system(size: 18, weight: .bold))
                        .cornerRadius(15)
                }
                NavigationLink(destination: SignupPage()){
                    Text("Don't have an account? SignUp")
                        .padding(.top, 10)
                }
            }
            .frame(width: screen.width-30, height: 400)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(color: Color(.black).opacity(0.25), radius: 25, x: 4, y: 8)
        }
    }
}
struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}



struct LoginForm: View {
    @State private var text = ""
    @State var header: String
    @State var placeholder: String
    
    var body: some View {
        VStack {
            HStack {
                Text(self.header)
                    .font(Font.system(size: 18, weight: .regular))
                    .foregroundColor(Color(#colorLiteral(red: 0.3529411765, green: 0.3529411765, blue: 0.3529411765, alpha: 1)))
                
                Spacer()
            }
            TextField(self.placeholder, text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }.padding()
    }
}

var screen = UIScreen.main.bounds
