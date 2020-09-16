import UIKit

func solution(_ n:Int) -> Int {
    if n == 0 { return 0 }
    var answer = [Int]()

    for i in 1...n {

        for j in 1...n {
            if  i * j == n {
                answer.append(i)
            }
        }
    }
    return answer.reduce(0, +)
}

solution(12)

// 다른 사람의 풀이

//func solution(_ n:Int) -> Int {
//    guard n != 0 else {
//        return 0
//    }
//    return Array(1...n).filter{n % $0 == 0}.reduce(0, +)
//}
