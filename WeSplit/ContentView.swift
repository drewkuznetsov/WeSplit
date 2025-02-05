//
//  ContentView.swift
//  WeSplit
//
//  Created by Андрей Кузнецов on 05.02.2025.
//

import SwiftUI

struct ContentView: View {
    
    @State var name = ""
    
    
    var body: some View {
        Form {
            Section {
                TextField("Enter Your Name", text: $name)
            }
            Section {
                Text(name)
            }
 
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
