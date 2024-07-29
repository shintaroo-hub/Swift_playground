//
//  ContentView.swift
//  TestSwift
//
//  Created by Kaloysius Rex on 7/26/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]
    @State var showingAlert = false
    
    var body: some View{
        NavigationStack{
            MainPage.init(isShowing: false)
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
