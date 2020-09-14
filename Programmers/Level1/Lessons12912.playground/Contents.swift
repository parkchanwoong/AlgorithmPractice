import UIKit
// 시간초과로 통과가 안되는 경우가 있음
func solution(_ a:Int, _ b:Int) -> Int64 {
    let arr = a < b ? Array(a...b) : Array(b...a)
    return Int64(arr.reduce(0, +))
}

solution(5, 3)

// 다른 사람의 풀이


//func solution(_ a:Int, _ b:Int) -> Int64 {
//    return Int64(Array(a > b ? b...a : a...b).reduce(0, +))
//}
