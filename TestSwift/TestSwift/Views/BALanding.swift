//
//  BALanding.swift
//  TestSwift
//
//  Created by Kaloysius Rex on 7/31/24.
//

import SwiftUI

struct BALanding: View {
    @State var alertopen = true
    var body: some View {
        HStack{
            ZStack(alignment: .top){
                Color.clear
                    .background(TestSwiftApp().ArchiveBG)
                
                VStack {
                    Text("Welcome to the Arona Archive!")
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding(.all)
                    HStack(alignment: .bottom){
                        VStack(spacing:20){
                            Button(action: { () })
                            {
                                Label("Gacha Simulator", systemImage: "")
                                    .fontWeight(.bold)
                                    .padding()
                                    .opacity(0.5)
                            }
                            .frame(width: 240, height: 55)
                            .background(Color(red: 0.98, green: 0.822, blue: 1.003))
                            .cornerRadius(15)
                            
                            
                            Button(action: { () })
                            {
                                Label("Student of the Day", systemImage: "")
                                    .fontWeight(.bold)
                                    .padding()
                                    .opacity(0.5)
                            }
                            .frame(width: 240, height: 55)
                            .background(Color(red: 0.98, green: 0.822, blue: 1.003))
                            .cornerRadius(15)
                            
                            
                        }.frame(maxHeight: .infinity, alignment: .bottom)
                    }.alert("Shittim Chest Activated!", isPresented: $alertopen) {
                        Button("OK") {
                        }
                    } message: {
                        Text("Welcome back Sensei!")
                    }
                }
            }
        }
    }
}

#Preview {
    BALanding()
}
