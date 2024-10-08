struct Heap<T> {
    private var elements: [T] = []
    private let priorityFunction: (T, T) -> Bool
    
    var isEmpty: Bool {
        return elements.isEmpty
    }
    
    var count: Int {
        return elements.count
    }
    
    var peek: T? {
        return elements.first
    }
    
    init(priorityFunction: @escaping (T, T) -> Bool) {
        self.priorityFunction = priorityFunction
    }
    
    mutating func push(_ element: T) {
        elements.append(element)
        siftUp(from: elements.count - 1)
    }
    
    mutating func pop() -> T? {
        guard !isEmpty else { return nil }
        elements.swapAt(0, count - 1)
        let element = elements.removeLast()
        if !isEmpty {
            siftDown(from: 0)
        }
        return element
    }
    
    private mutating func siftUp(from index: Int) {
        var childIndex = index
        let child = elements[childIndex]
        var parentIndex = self.parentIndex(of: childIndex)
        
        while childIndex > 0 && priorityFunction(child, elements[parentIndex]) {
            elements[childIndex] = elements[parentIndex]
            childIndex = parentIndex
            parentIndex = self.parentIndex(of: childIndex)
        }
        
        elements[childIndex] = child
    }
    
    private mutating func siftDown(from index: Int) {
        let parent = elements[index]
        var parentIndex = index
        
        while true {
            let leftChildIndex = self.leftChildIndex(of: parentIndex)
            let rightChildIndex = leftChildIndex + 1
            
            var candidateIndex = parentIndex
            
            if leftChildIndex < count && priorityFunction(elements[leftChildIndex], elements[candidateIndex]) {
                candidateIndex = leftChildIndex
            }
            
            if rightChildIndex < count && priorityFunction(elements[rightChildIndex], elements[candidateIndex]) {
                candidateIndex = rightChildIndex
            }
            
            if candidateIndex == parentIndex {
                return
            }
            
            elements.swapAt(parentIndex, candidateIndex)
            parentIndex = candidateIndex
        }
        elements[parentIndex] = parent
    }
    
    private func parentIndex(of index: Int) -> Int {
        return (index - 1) / 2
    }
    
    private func leftChildIndex(of index: Int) -> Int {
        return 2 * index + 1
    }
    
    private func rightChildIndex(of index: Int) -> Int {
        return 2 * index + 2
    }
}

struct PriorityQueue<T> {
    private var heap: Heap<T>
    
    var isEmpty: Bool {
        return heap.isEmpty
    }
    
    var count: Int {
        return heap.count
    }
    
    var peek: T? {
        return heap.peek
    }
    
    init(sort: @escaping (T, T) -> Bool) {
        heap = Heap(priorityFunction: sort)
    }
    
    mutating func enqueue(_ element: T) {
        heap.push(element)
    }
    
    mutating func dequeue() -> T? {
        return heap.pop()
    }
}
let nm = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,m) = (nm[0], nm[1])
var pQueue = PriorityQueue<[Int]>(sort: {
    if abs($0[0])+abs($0[1]) == abs($1[0])+abs($1[1]) {
        if $0[0] == $1[0] {
            return $0[1] < $1[1]
        } else {
            return $0[0] < $1[0]
        }
    } else {
        return abs($0[0])+abs($0[1]) < abs($1[0])+abs($1[1])
    }
})

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    pQueue.enqueue(input)
}

for _ in 0..<m {
    if let result = pQueue.dequeue() {
        pQueue.enqueue(result.map{$0+2})
    }
}

if let peek = pQueue.peek {
    print(peek[0], peek[1])
} else {
    print("-1")
}