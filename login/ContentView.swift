//
//  ContentView.swift
//  login
//
//  Created by GSITM on 11/29/23.
//
import SwiftUI

struct ContentView: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        ZStack{
            VStack{
                iconArea()
                inputArea
                accountBtnArea
                loginBtn
                companyIcon
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
        HStack{
            Button("ID/PASS 찾기"){
                // 실행할 코드
            }.padding(.trailing)
            Button("회원가입"){
                // 실행할 코드
            }.padding(.trailing)
        }
        .padding(.top,15)
    }
    
    var companyIcon: some View{
        VStack{
            Spacer()
            Text("BeomBoo")
                .fontWeight(.light)
                .font(.system(size: 15))
        }
    }
    
    var loginBtn: some View{
       Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
           HStack{
               Image(systemName: "rectangle.and.hand.point.up.left.fill")
                   .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
               Text("로그인")
           }
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
