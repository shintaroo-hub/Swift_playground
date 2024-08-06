//
//  ContentView.swift
//  TestSwift
//
//  Created by Kaloysius Rex on 7/26/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Query private var items: [Item]
    @State var showingAlert = false
    @State private var path = NavigationPath()
    
    var body: some View{
        NavigationStack(path: $path){
            MainPage.init(isShowing: false,
                  onClick:
                    {
                        path.append("BALanding")
                    }
            )
            .navigationDestination(for: String.self) { view in
                if view == "BALanding" {
                    BALanding().navigationBarBackButtonHidden(true)
                }
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
