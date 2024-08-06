//
//  MainPage.swift
//  TestSwift
//
//  Created by Kaloysius Rex on 7/29/24.
//

import SwiftUI

struct MainPage: View {
    var isShowing = false
    @ObservedObject private var mcl = MainClass(testvar1: "var3", testvar2: "var2", testvarInt: 2)
    var onClick : () -> Void
    var body: some View{
        HStack{
            ZStack{
                Color.clear
                    .background(TestSwiftApp().MainBG)
                VStack {
                    Text("Arona Archive")
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                    HStack {
                        Text("Where blue folders begin")
                            .font(.caption)
                            .shadow(color: Color(red: 0.109, green: 0.41, blue: 0.77), radius:2)
                    }
                }
                HStack{
                    Button(action: { mcl.testMethod(open: true) })
                    {
                        Label("Activate Shittim Chest", systemImage: "")
                            .fontWeight(.bold)
                            .padding()
                            .opacity(0.5)
                    }
                    .background(Color(red: 0.98, green: 0.822, blue: 1.003))
                    .cornerRadius(15)
                    .frame(width: 240, height: 40)
                    .alert("Welcome back Sensei!", isPresented: $mcl.IsAlertOpen) {
                        Button("OK") {
                            mcl.testMethod(open: false)
                                onClick()
                        }
                    } message: {
                        Text("Activating Shittim Chest. . .")
                    }
                }.frame(maxHeight: .infinity, alignment: .bottom)
            }
        }
    }
}

#Preview {
    MainPage.init(isShowing: false, onClick: {
        
    })
}
