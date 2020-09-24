import UIKit

func solution(_ x:Int, _ n:Int) -> [Int64] {
    var answer = [Int64]()
    var initialValue: Int64 = 0
    for _ in 0..<n {
        initialValue += Int64(x)
        answer.append(initialValue)
    }
    return answer
}
solution(2, 5)

// 다른 사람의 풀이
//func solution(_ x:Int, _ n:Int) -> [Int64] {
//    return Array(1...n).map { Int64($0 * x) }
//}
