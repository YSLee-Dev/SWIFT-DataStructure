import UIKit

/// 2. Stack
/// 같은 구조의 데이터를 정해진 방향으로 쌓아서 보관하는 자료구조
/// 가장 위에 있는 데이터를 Top이라고 함
/// Stack은 LIFO 구조를 가지고 있음
/// - UINavigation과 같이 가장 마지막으로 들어온 Data가 가장 먼저 나감
///
/// Stack은 Pop을 통해 데이터를 get(제거) 할 수 있고,
/// Push를 통해 데이터를 삽입할 수 있음
///
/// Pop, Push 모두 Top를 통해서 이루어짐

// Stack 자료구조
// Queue와 다르게 데이터 입출력이 모두 마지막 데이터를 기준으로 하기 때문에 오버헤드가 없음
struct Stack<T> {
    private var stack: [T] = []
    
    public func count() -> Int {
        self.stack.count
    }
    
    public func isEmpty() -> Bool {
        self.stack.isEmpty
    }
    
    public mutating func push(_ element: T) {
        self.stack.append(element)
    }
    
    public mutating func pop() -> T? {
        self.stack.popLast() // removeLast와 다른 점은 popLast는 옵셔널타입을 리턴하지만, removeLast는 일반 타입을 리턴함 -> 값이 없는 경우 removeLast는 오류 발생
    }
}

print("INT STACK--------------------------------")
var intStack = Stack<Int>()
intStack.push(1)
intStack.push(2)
intStack.push(3)

print(intStack.pop())

print("STRING STACK--------------------------------")
var stringStack = Stack<String>()
let gana = ["가", "나"]

for item in 0 ... 100 {
    stringStack.push(item % 2 == 0 ? gana[0] : gana[1])
}

for _ in 0 ... 100 {
   print(stringStack.pop())
}
