//
//  ContentView.swift
//  WeSplit
//
//  Created by Андрей Кузнецов on 05.02.2025.
//

import SwiftUI

struct ContentView: View {
    
    let stdents = ["Andrey", "Tania", "Vasia", "Petia"]
    @State var currentStudent = "Andrey"
    
    
    var body: some View {
        NavigationView {
            Form {
                Picker("Select your student", selection: $currentStudent) {
                    ForEach(stdents, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.inline)
                Text(currentStudent)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
