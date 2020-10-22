import UIKit

// exercise 1
let a: Double = 6
let b: Double = 1
let c: Double = -1
let D: Double = b * b - 4 * a * c
let x1: Double = ( -b - sqrt(D)) / 2 * a
let x2: Double = ( -b + sqrt(D)) / 2 * a

// exercise 2

let cathA: Double = 3
let cathB: Double = 4
let hypotenuse = sqrt(cathA * cathA + cathB * cathB)
let perimetr = cathA + cathB + hypotenuse
let area = cathA * cathB / 2

// exercise 3

let amount: Double  = 1000
let percent: Double  = 3
let years: Double  = 5
let totalamount: Double  = amount * (1 + percent * years / 100)
