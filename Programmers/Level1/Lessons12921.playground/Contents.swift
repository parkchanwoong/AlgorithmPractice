import UIKit
// 못풀었음..
func solution(_ n:Int) -> Int {
    var count = 0
    // 모두 소수라고 가정
    var arrTemp = Array(repeating: true, count: n+1)

    for i in 2...n {
        // 맨 처음 2는 소수
        if arrTemp[i] == true {
            count += 1
            // stride(from: i부터, through: n까지, By: i씩)
            for j in stride(from: i, through: n, by: i) {
                arrTemp[j] = false
            }
        }
    }
    return count
}
solution(5)

