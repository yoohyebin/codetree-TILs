class Deque<T> {
    var enqueue: [T] = []
    var dequeue: [T] = []
    
    var count: Int {
        return enqueue.count + dequeue.count
    }
    var isEmpty: Bool {
        return enqueue.isEmpty && dequeue.isEmpty
    }
    var first: T? {
        if dequeue.isEmpty {
            return enqueue.first
        }
        return dequeue.last
    }
    
    var last: T? {
        if enqueue.isEmpty {
            return dequeue.first
        }
        return enqueue.last
    }

    func pushFirst(_ n: T) {
        dequeue.append(n)
    }
    
    func pushLast(_ n: T) {
        enqueue.append(n)
    }
    
    func popFirst() -> T? {
        if dequeue.isEmpty {
            dequeue = enqueue.reversed()
            enqueue.removeAll()
        }
        return dequeue.popLast()
        
    }
    
    func popLast() -> T? {
        var returnValue: T?
        if enqueue.isEmpty {
            dequeue.reverse()
            returnValue = dequeue.popLast()
            dequeue.reverse()
        } else {
            returnValue = enqueue.popLast()
        }
        return returnValue
    }
}

let n = Int(readLine()!)!
var deque = Deque<Int>()

for i in 1...n {
    deque.pushLast(i)
}

while deque.count != 1 {
    deque.popFirst()
    deque.pushLast(deque.popFirst() ?? 0)
}

print(deque.first ?? 0)