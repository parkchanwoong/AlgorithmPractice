import UIKit

func solution(_ n:Int) -> String {
    var str = ""
    for i in 1...n {
        str += i % 2 == 0 ? "박" : "수"
    }

    return str
}

solution(3)

// 다른 사람의 풀이

//func solution(_ n:Int) -> String {
//    return (0..<n).map{($0%2==0 ? "수":"박")}.reduce("", +)
//}
