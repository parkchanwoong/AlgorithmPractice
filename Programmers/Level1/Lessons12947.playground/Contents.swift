import UIKit

func solution(_ x:Int) -> Bool {
    let temp = String(x).map {$0}
    let intTemp: [Int] = temp.map {Int(String($0))!}
    if x % intTemp.reduce(0, +) == 0 {
        return true
    } else {
        return false
    }
}

solution(10)

// 다른 사람의 풀이

//func solution(_ x:Int) -> Bool {
//    return x % String(x).reduce(0, {$0+Int(String($1))!}) == 0
//}
