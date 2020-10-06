import UIKit
// 실패
func solution(_ N:Int, _ stages:[Int]) -> [Int] {

    var rates: [Double] = .init(repeating: 0, count: N)

    var userStages: [Int: Int] = [:]

    stages.forEach {
        if let value = userStages[$0] { userStages[$0] = value + 1 }
        else { userStages[$0] = 1 }
    }

    var user = stages.count

    userStages.keys.sorted().forEach {
        guard let value = userStages[$0], $0 <= N else { return }
        rates[$0-1] = Double(value) / Double(user)
        user -= value
    }

    return rates.enumerated().sorted { $0.element > $1.element }.map { $0.offset + 1 }
}


solution(8, [1,2,3,4,5,6,7])
