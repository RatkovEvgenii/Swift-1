import Foundation

//1. Реализовать свой тип коллекции «очередь» (queue) c использованием дженериков.
//2. Добавить ему несколько методов высшего порядка, полезных для этой коллекции (пример: filter для массивов)
//3. * Добавить свой subscript, который будет возвращать nil в случае обращения к несуществующему индексу.

struct Queue<T> {
    private var elements: [T] = []
    mutating func push(_ element: T) {
        elements.append(element)
    }
    mutating func pop() -> T? {
        return elements.removeFirst()
    }
    
    subscript (index: Int) -> Queue{
        if index < 0 || index > self.elements.count {
            return nil // не хочет возращать nil, хз что делать
        }
        else {
            return self.elements[index] as! Queue<T>
        }
    }
}

