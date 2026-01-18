
import Foundation
import SwiftUI
import Combine

class CounterViewModel: ObservableObject {
    @Published private var counter: Counter = Counter()
    
    var value: Int {
        counter.value
    }
    
    var isPremium: Bool {
        return counter.isPremium
    }
    
    func updateCounter() {
        counter.increment()
    }
    
    func lowerCounter() {
        counter.decrement()
    }
    
    func resetCounter() {
        counter.reset()
    }
}
