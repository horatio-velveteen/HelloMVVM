//
//  Counter.swift
//  HelloMVVM
//
//  Created by Ronald Brown on 1/18/26.
//
enum IsPremium {
    case premium
    case notPremium
}

struct Counter {
    var value: Int
    var isPremium: Bool = false
    
    
    init () {
        self.value = 0
    }
    
    mutating func increment() {
        value += 1
        if value.isMultiple(of: 3) {
            isPremium = true
        } else {
            isPremium = false
        }
    }
    
    mutating func reset() {
        self.value = 0
    }
    
    mutating func decrement() {
        self.value -= 1
    }
}
