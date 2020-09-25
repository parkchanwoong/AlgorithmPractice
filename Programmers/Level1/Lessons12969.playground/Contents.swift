import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1])
var text = ""
for _ in 0..<a {
    text.append("*")
}
for _ in 0..<b {
    print(text)
}

// 다른 사람의 풀이

//let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
//let (a, b) = (n[0], n[1])
//
//for _ in 0..<b {
//    print(Array(repeating: "*", count: a).joined())
//}
