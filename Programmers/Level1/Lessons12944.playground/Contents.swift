import UIKit
// 다른 사람의 풀이와 같음
func solution(_ arr:[Int]) -> Double {
    return Double(arr.reduce(0, +)) / Double(arr.count)
}

solution([5,5])
