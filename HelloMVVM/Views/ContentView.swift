//
//  ContentView.swift
//  HelloMVVM
//
//  Created by Ronald Brown on 1/18/26.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: CounterViewModel
    
    init() {
        viewModel = CounterViewModel()
    }
    var body: some View {
        VStack {
            Text("PREMIUM")
                .font(.largeTitle)
                .bold()
                .frame(width: 200, height: 200)
            Text("\(viewModel.value)")
                .font(.title)
            Button("Increment") {
                self.viewModel.updateCounter()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
