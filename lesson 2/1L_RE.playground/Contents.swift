import Foundation

//ex1
func isEven (number: Int) -> Bool {
    return number % 2 == 0
}

//ex2
func isDevideOn3 (number: Int) -> Bool {
    return number % 3 == 0
}

//ex3
var array = [Int]()
for i in 1...100 {
    array.append(i)
}

//ex4
var index = 0
while index < array.count {
    if array[index] % 2 == 0  || array[index] % 3 != 0 {
        array.remove(at: index)
        index -= 1
    }
    index += 1
}

//ex5

var fibonacciNubmers:[UInt] = [0, 1]
func fibonacci() {
    for i in 1...99 {  // вопрос. на 93 значении происходит Execution. по всей видимости заканчивается допустимый диапазон UInt. как можно решить эту проблему?
        fibonacciNubmers.append(fibonacciNubmers[i] + fibonacciNubmers[i-1])
    }
    print(fibonacciNubmers) }

//ex6


