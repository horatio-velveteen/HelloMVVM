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
            Text(viewModel.isPremium ? "PREMIUM" : "")
                .foregroundColor(Color.green)
                .font(.largeTitle)
                .bold()
                .frame(width: 200, height: 200)
            Text("\(viewModel.value)")
                .font(.title)
            HStack {
                Button("Increment") {
                    self.viewModel.updateCounter()
                }
                Button("Decrement") {
                    self.viewModel.lowerCounter()
                }
                Button("Clear") {
                    self.viewModel.resetCounter()
                }
            }
            .padding(.horizontal, 16)

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
