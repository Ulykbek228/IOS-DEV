import Foundation
for i in 1...100 {
    if i % 3 == 0 && i%5 == 0{
        print("FizzBuzz")
    }
    else if i % 3 == 0 {
        print("Fizz")
    }
    else if i % 5 == 0 {
        print("Buzz") }
    else {
        print(i)
        
    }
}
/task2/
func isPrime(_ number: Int) -> Bool {
    if number < 2 { return false }
    for i in 2..<Int(Double(number).squareRoot()) + 1 {
        if number % i == 0 { return false }
    }
    return true
}

for n in 1...100 where isPrime(n) {
    print(n)
}


/task3/
let inputValue: Double = 25.0
let inputUnit: String = "C"

func cToF(_ c: Double) -> Double { c * 9/5 + 32 }
func cToK(_ c: Double) -> Double { c + 273.15 }
func fToC(_ f: Double) -> Double { (f - 32) * 5/9 }
func kToC(_ k: Double) -> Double { k - 273.15 }

switch inputUnit.uppercased() {
case "C":
    print("F: \(cToF(inputValue)), K: \(cToK(inputValue))")
case "F":
    let c = fToC(inputValue)
    print("C: \(c), K: \(cToK(c))")
case "K":
    let c = kToC(inputValue)
    print("C: \(c), F: \(cToF(c))")
default:
    print("Unknown unit")
}

/task4/
var list = ["Bread", "Milk"]


list.append("Eggs")
if let i = list.firstIndex(of: "Milk") {
    list.remove(at: i)
}
print("Current list: \(list)")

/task5/
import Foundation

let sentence = "Swift is fun and Swift is powerful"
let words = sentence.lowercased()
    .components(separatedBy: CharacterSet.alphanumerics.inverted)
    .filter { !$0.isEmpty }

var freq: [String:Int] = [:]
for word in words { freq[word, default: 0] += 1 }
for (word, count) in freq {
    print("\(word): \(count)")
}

/task6/
func fibonacci(_ n: Int) -> [Int] {
    guard n > 0 else { return [] }
    if n == 1 { return [0] }
    var seq = [0, 1]
    while seq.count < n {
        seq.append(seq[seq.count-1] + seq[seq.count-2])
    }
    return seq
}
print(fibonacci(10))

/task7/
let students = ["Ali":85, "Aida":92, "Dana":73]
let scores = Array(students.values)
let avg = Double(scores.reduce(0,+)) / Double(scores.count)
let maxScore = scores.max()!
let minScore = scores.min()!

print("Average: \(avg), Highest: \(maxScore), Lowest: \(minScore)")
for (name, score) in students {
    let status = Double(score) >= avg ? "above" : "below"
    print("\(name): \(score) (\(status) average)")
}

/task8/
func isPalindrome(_ text: String) -> Bool {
    let filtered = text.lowercased().filter { $0.isLetter }
    return filtered == String(filtered.reversed())
}

print(isPalindrome("A man, a plan, a canal: Panama"))
print(isPalindrome("Swift"))

/task9/
let a: Double = 10
let b: Double = 5
let operation: String = "*"

func add(_ a:Double,_ b:Double)->Double{a+b}
func sub(_ a:Double,_ b:Double)->Double{a-b}
func mul(_ a:Double,_ b:Double)->Double{a*b}
func div(_ a:Double,_ b:Double)->Double?{ b==0 ? nil : a/b }

switch operation {
case "+": print(add(a,b))
case "-": print(sub(a,b))
case "*": print(mul(a,b))
case "/": print(div(a,b) ?? "Error: division by zero")
default: print("Unknown operation")
}

