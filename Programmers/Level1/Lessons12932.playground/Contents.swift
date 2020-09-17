import UIKit

func solution(_ n:Int64) -> [Int] {
    var arrTemp: [String] = []
    for i in String(n) {
        arrTemp.insert(String(i), at: 0)
    }
    return arrTemp.map {Int($0)!}
}

solution(12345)


// 다른 사람의 풀이

//func solution(_ n:Int64) -> [Int] {
//    return  "\(n)".compactMap { $0.hexDigitValue }.reversed()
//}
