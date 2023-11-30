//
//  ContentView.swift
//  login
//
//  Created by GSITM on 11/29/23.
//
import SwiftUI

struct ContentView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var isShowingAlert: Bool = false
    @State private var tag:Int? = nil
    var body: some View {
        NavigationStack{
            ZStack{
                VStack{
                    iconArea()
                    inputArea
                    accountBtnArea
                    loginBtn2
                    companyIcon
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

// Extension을 이용한 가시화 방법
// 뷰 계층 구조를 만들 때 View 타입을 확장(Extension)하여 사용자 정의 메서드, 프로퍼티 또는
// 초기화 로직을 추가함
private extension ContentView{
    var inputArea: some View{
        VStack{
            HStack{
                Image(systemName: "envelope").frame(width: 30)
                TextField("ID / E-mail Address",text: $email)
                    .frame(width: 300, height: 20)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).strokeBorder())
            }.padding(.bottom,10)
            HStack{
                Image(systemName: "lock").frame(width: 30)
                TextField("Password",text: $password)
                    .frame(width: 300, height: 20)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).strokeBorder())
            }
        }
    }
    
    var accountBtnArea: some View{
        HStack(alignment: .center) {
            NavigationLink("ID/E-mail 찾기"){
                SearchUserInfo()
            }
            .padding(10)
            
            NavigationLink("회원가입"){
                RegisterUserInfo()
            }
            .padding(10)
        }
    }
    
    var companyIcon: some View{
        VStack{
            Spacer()
            Text("BeomBoo")
                .fontWeight(.light)
                .font(.system(size: 15))
        }
    }
    
    var loginBtn: some View {
        Button(action: {
            // TODO: 로그인 액션 구현
            isShowingAlert = true
        }) {
            HStack {
                Image(systemName: "rectangle.and.hand.point.up.left.fill")
                    .resizable()
                    .font(.title)
                    .frame(width: 30, height: 30)
                    .padding(.leading, 10)
                Text("로그인하기")
                    .font(.system(size: 20))
                    .bold(true)
                    .frame(width: 150)
            }
            .frame(height: 30)
            .padding(10)
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(20)
        }
        .padding(.top, 20)
    }
    
    var loginBtn2: some View {
        Button{
            isShowingAlert = true
        } label: {
            HStack {
                Image(systemName: "rectangle.and.hand.point.up.left.fill")
                    .resizable()
                    .font(.title)
                    .frame(width: 30, height: 30)
                    .padding(.leading, 10)
                Text("로그인하기")
                    .font(.system(size: 20))
                    .bold(true)
                    .frame(width: 150)
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
        }
    }
}

// 구조체를 이용한 가시화 방법
struct iconArea: View{
    var body: some View{
        VStack{
            Spacer()
            Image(systemName: "signature").resizable().frame(width: 150,height: 100)
        }.padding(.bottom, 100)
    }
}
