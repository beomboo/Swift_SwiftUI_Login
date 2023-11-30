//
//  registerUserInfo.swift
//  login
//
//  Created by GSITM on 11/30/23.
//

import SwiftUI

struct RegisterUserInfo: View {
    @State var email = ""
    @State var password = ""
    @State var isShowingAlert = false
    @State private var birthDate = Date()
    var body: some View {
        Text("회원가입")
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .padding()
        inputArea
        saveBtn
    }
}

private extension RegisterUserInfo {
    var inputArea: some View{
        VStack{
            HStack{
                Image(systemName: "envelope").frame(width: 30)
                TextField("ID / E-mail Address",text: $email)
                    .frame(width: 300, height: 20)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).strokeBorder())
            }.padding(.bottom,20).padding(.top,20)
            HStack{
                Image(systemName: "person").frame(width: 30)
                TextField("이름",text: $email)
                    .frame(width: 300, height: 20)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).strokeBorder())
            }.padding(.bottom,20)
            HStack{
                Image(systemName: "lock").frame(width: 30)
                TextField("Password",text: $password)
                    .frame(width: 300, height: 20)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).strokeBorder())
            }.padding(.bottom,20)
            HStack{
                Image(systemName: "calendar").frame(width: 30)
                DatePicker("",selection: $birthDate,in: ...Date(), displayedComponents: [.date])
                Spacer()
            }
        }
    }
    var saveBtn: some View {
        Button{
            isShowingAlert = true
        } label: {
            HStack {
                Text("확인")
                    .font(.system(size: 20))
                    .bold(true)
                    .frame(width: 100)
                    .alert("BeomBoo", isPresented: $isShowingAlert) {
                        Button {
                            loginConfirm()
                        } label: {
                            Text("OK")
                        }
                    } message: {
                        Text("회원가입이 완료되었습니다.")
                    }
            }
            .frame(height: 30)
            .padding(10)
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(20)
        }.padding(.top,50)
    }
}

#Preview {
    RegisterUserInfo()
}
