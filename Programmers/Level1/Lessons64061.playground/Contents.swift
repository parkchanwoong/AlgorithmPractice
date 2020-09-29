import UIKit

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var boardTemp = board
    var answer = 0
    var basket = [Int]()

    for move in moves {

        for (i, b) in boardTemp.enumerated() {
            if b[move-1] == 0 { continue }
            boardTemp[i][move-1] = 0
            if basket.isEmpty {
                basket.append(b[move-1])
            } else {
                if basket.last! == b[move-1] {
                    basket.removeLast()
                    answer += 2
                } else {
                    basket.append(b[move-1])
                }
            }
            break
        }
    }

    return answer
}
solution([[0,0,0,0,0],[0,0,1,0,3],[0,2,5,0,1],[4,2,4,4,2],[3,5,1,3,1]], [1,5,3,5,1,2,1,4])
