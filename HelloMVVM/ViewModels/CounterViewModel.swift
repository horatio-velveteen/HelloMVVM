
import Foundation
import SwiftUI

class CounterViewModel: ObservableObject {
    @Published private var counter: Counter = Counter()
    
    var value: Int {
        counter.value
    }
    
    func updateCounter() {
        counter.increment()
    }
}
