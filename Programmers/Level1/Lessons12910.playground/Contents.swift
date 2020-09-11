import UIKit

func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    let arrTemp = arr.sorted().filter {$0 % divisor == 0}
    return arrTemp.isEmpty ? [-1] : arrTemp
}

solution([3,2,6], 10)

// 다른 사람의 풀이

//func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
//    let array = arr.sorted().filter{ $0 % divisor == 0 }
//    return  array == [] ? [-1] : array
//}
