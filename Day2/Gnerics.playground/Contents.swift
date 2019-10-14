struct Stack {
  
  var items = [Int]()
  
  mutating func push(_ newItem: Int){
    items.append(newItem)
  }
  mutating func pop() -> Int? {
    guard !items.isEmpty else {
      return nil
    }
    return items.removeLast()
  }
  
}

var inStack = Stack()
inStack.push(1)
inStack.push(2)

print(String(describing: inStack.pop()))
print(String(describing: inStack.pop()))
print(String(describing: inStack.pop()))

struct Stack1 <Element> {
  var items = [Element]()
  
  mutating func push(_ newItem: Element){
    items.append(newItem)
  }
  
  mutating func pop() -> Element? {
    guard !items.isEmpty else {
      return nil
    }
    return items.removeLast()
  }
}

var inStack1 = Stack1<Any>()
inStack1.push(1)
inStack1.push(2)
inStack1.push("jahsvc")
inStack1.push(16.00)

for _ in inStack1.items {
  print(String(describing: inStack1.pop()))
}
