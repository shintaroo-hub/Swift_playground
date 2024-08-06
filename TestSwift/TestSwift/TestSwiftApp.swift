//
//  TestSwiftApp.swift
//  TestSwift
//
//  Created by Kaloysius Rex on 7/26/24.
//

import SwiftUI
import SwiftData

@main
struct TestSwiftApp: App {

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    var MainBG : some View{
        Image("arona")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .edgesIgnoringSafeArea(.all)
    }
    var ArchiveBG : some View{
        Image("archivebg")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .edgesIgnoringSafeArea(.all)
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
    }
}
