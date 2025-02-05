//
//  ContentView.swift
//  WeSplit
//
//  Created by Андрей Кузнецов on 05.02.2025.
//

import SwiftUI

struct ContentView: View {
    
    @State var tapCount = 0
    
    
    var body: some View {
        Button("Tap Count: \(tapCount)") {
            self.tapCount += 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
