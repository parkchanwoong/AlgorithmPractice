import UIKit
// 지문이 아리쏭...
func solution(_ d:[Int], _ budget:Int) -> Int {
    if d.reduce(0, +) == budget { return d.count }

    var budget2 = budget
    var answer = 0

    for i in d.sorted() {
        budget2 -= i
        if budget2 < 0 {
            break
        }

        answer += 1
    }

    return answer
}

solution([1,3,2,5,4], 9)
