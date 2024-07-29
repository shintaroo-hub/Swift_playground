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
    var body: some View{
        HStack{
            ZStack{
                Color.clear
                    .background(TestSwiftApp().bgImage)
                //Image("purplegacha")
                VStack {
                    Text("Arona Archive")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(
                            Color(hue: 0.481, saturation: 0.801, brightness: 0.904))
                        .multilineTextAlignment(.center)
                    HStack {
                        Text("Where blue folders begin")
                            .font(.caption)
                            .foregroundColor(
                                Color(red: 0.462, green: 0.884, blue: 1.002)
                            )
                            .shadow(color: Color(red: 0.109, green: 0.41, blue: 0.77), radius:2)
                    }
                }
                HStack{
                    Button(action: { mcl.testMethod(open: true) }){
                        Label("Activate Shittim Chest", systemImage: "")
                            .fontWeight(.bold)
                            .foregroundColor(
                                Color(red: 0.149, green: 0.708, blue: 0.993)
                            ).frame(width: 220, height: 40)
                            .background(Color(red: 0.98, green: 0.822, blue: 1.003))
                            .cornerRadius(15)
                            .padding()
                    }
                    .alert("Welcome Sensei!", isPresented: $mcl.IsAlertOpen) {
                        Button("OK") {
                            mcl.testMethod(open: false)
                        }
                    } message: {
                        Text("Logging you in. . . .")
                    }
                    
                }.frame(maxHeight: .infinity, alignment: .bottom)
            }
        }
    }
}

#Preview {
    MainPage()
}
