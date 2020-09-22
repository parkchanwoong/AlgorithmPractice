import UIKit
// 다른 사람의 풀이도 비슷함
func solution(_ num:Int) -> Int {
    var count = 0
    var value = num

    while value != 1 {
        count += 1
        if value % 2 == 0 {
            value /= 2
        } else {
            value = value * 3 + 1
        }
        if count == 500 { return -1 }
    }

    return count
}

solution(1)

