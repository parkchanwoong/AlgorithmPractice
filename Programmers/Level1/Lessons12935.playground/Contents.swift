import UIKit

func solution(_ arr:[Int]) -> [Int] {
    if arr.count == 1 {
        return [-1]
    }
    var arrTemp = arr
    arrTemp.firstIndex(of: arr.min()!)
    let _ = arrTemp.remove(at: arrTemp.firstIndex(of: arr.min()!)!)
    return arrTemp
}

solution([10])

// 다른 사람의 풀이

//func solution(_ arr:[Int]) -> [Int] {
//    let min = arr.sorted(by: <)[0]
//     return arr.count == 1 ? [-1] : arr.compactMap({ return $0 != min ? $0 : nil })
//}
