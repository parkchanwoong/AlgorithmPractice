import UIKit

func solution(_ n:Int64) -> Int64 {
    return Int64(Int("\(n)".compactMap{$0.hexDigitValue}.sorted(by: >).map {"\($0)"}.reduce("", +))!)
}
solution(118372)

// 다른 사람의 풀이

//func solution(_ n:Int64) -> Int64 {
//    return Int64(String(Array(String(n)).sorted { $0 > $1 }))!
//}

