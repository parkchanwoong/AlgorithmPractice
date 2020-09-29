import UIKit

func solution(_ numbers:[Int]) -> [Int] {
    var pivot = -1
    var answer = Set<Int>()
    for i in 0..<numbers.count {
        pivot = i
        for (j, v) in numbers.enumerated() {
            if j == pivot { continue }
            answer.insert(v + numbers[pivot])
        }
    }
    return answer.sorted()
}

solution([5,0,2,7])
