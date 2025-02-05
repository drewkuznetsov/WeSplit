//
//  ContentView.swift
//  WeSplit
//
//  Created by Андрей Кузнецов on 05.02.2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var checkAmount = 100.0
    @State private var numberOfPeople = 1
    @State private var tipPecentage = 20
    
    @FocusState private var amountIsFocused: Bool
    
    let tipPersentages = [5, 10, 15, 20, 0]
    
    var totalByPerson: Double {
            return (checkAmount*(Double(tipPecentage)/100)) / Double(numberOfPeople + 1)
        }
    
    var body: some View {
        
        NavigationView {
            
            Form {
                Section("Check Amount") {
                    TextField("Check Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                        .keyboardType(.numberPad)
                        .focused($amountIsFocused)
                }
                
                Section("Number of people") {
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(1..<100) {
                            Text("\($0) people")
                        }
                    }
                    .pickerStyle(.wheel)
                }
                
                Section("Tip Percent") {
                    Picker("Tip Percent", selection: $tipPecentage) {
                        ForEach(tipPersentages, id: \.self) {
                            Text($0, format: .percent)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                
                Section("Tips Amount") {
                    HStack {
                        Text("Tips Amount:")
                        Text(totalByPerson, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                    }
                }
            }
            .navigationBarTitle("We Split")
            .toolbar {
                if amountIsFocused {
                    Button("Done") {
                        amountIsFocused = false
                    }
                }
            }

            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
