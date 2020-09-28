import UIKit

func solution(_ numbers:[Int], _ hand:String) -> String {
    var answer = ""

    let leftArray = [1,4,7,-1]
    let centerArray = [2,5,8,0]
    let rightArray = [3,6,9,-1]

    var lPosition = (0, 3)
    var rPosition = (2, 3)

    for n in numbers {
        if leftArray.contains(n) {
            answer += "L"
            lPosition = (0, leftArray.firstIndex(of: n)!)
            continue
        }

        if rightArray.contains(n) {
            answer += "R"
            rPosition = (2, rightArray.firstIndex(of: n)!)
            continue
        }

        if centerArray.contains(n) {
            let centerPosition = (1, centerArray.firstIndex(of: n)!)
            let left = solutionHelper(position: lPosition, centerPosition: centerPosition)
            let right = solutionHelper(position: rPosition, centerPosition: centerPosition)

            if left > right {
                answer += "R"
                rPosition = centerPosition
            } else if right > left {
                answer += "L"
                lPosition = centerPosition
            } else {
                if hand == "right" {
                    answer += "R"
                    rPosition = centerPosition
                } else {
                    answer += "L"
                    lPosition = centerPosition
                }
            }

        }

    }

    return answer
}

func solutionHelper(position: (Int, Int), centerPosition: (Int, Int)) -> Int {
    var distance = 0

    distance = position.0 == centerPosition.0 ? 0 : 1
    let pivot = abs(position.1 - centerPosition.1)
    distance += pivot


    return distance
}

solution([1, 3, 4, 5, 8, 2, 1, 4, 5, 9, 5], "right")
