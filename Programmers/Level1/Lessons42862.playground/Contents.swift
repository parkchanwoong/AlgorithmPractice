import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var reserveAry: [Int] = reserve
    var lostAry = lost.filter {
        for i in 0..<reserveAry.count {
            if $0 == reserveAry[i] {
                reserveAry[i] = -1
                return false
            }
        }
        return true
    }

    lostAry = lostAry.filter {
        for i in 0..<reserveAry.count {
            if $0 == reserveAry[i] - 1 || $0 == reserveAry[i] + 1 {
                reserveAry[i] = -1
                return false
            }
        }
        return true
    }

    return n - lostAry.count
}

//func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
//    var lostTemp = lost.sorted()
//
//    for value in reserve.sorted() {
//
//        if lostTemp.contains(value) {
//            for (i, v) in lostTemp.enumerated() {
//                if v == value {
//                    lostTemp.remove(at: i)
//                }
//            }
//            continue
//        }
//
//        if lostTemp.contains(value-1) {
//            for (i, v) in lostTemp.enumerated() {
//                if v == value-1 {
//                    lostTemp.remove(at: i)
//                }
//            }
//            continue
//        }
//
//        if lostTemp.contains(value+1) {
//            for (i, v) in lostTemp.enumerated() {
//                if v == value+1 {
//                    lostTemp.remove(at: i)
//                }
//            }
//            continue
//        }
//    }
//
//    return n - lostTemp.count
//}

let answer = solution(5, [1,2,3,5], [1,3,4,5])

print("답 ::: ",answer)
