//
//  Counter.swift
//  HelloMVVM
//
//  Created by Ronald Brown on 1/18/26.
//

struct Counter {
    var value: Int
    
    init () {
        self.value = 0
    }
    
    mutating func increment() {
        value += 1
    }
}
