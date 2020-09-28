import UIKit

func solution(_ numbers:[Int], _ hand:String) -> String {
    var answer = ""

    let leftArray = [1,4,7]
    let centerArray = [2,5,8,0]
    let rightArray = [3,6,9]

    var lPosition = 3
    var rPosition = 3

    for n in numbers {
        if leftArray.contains(n) {
            answer += "L"
            lPosition = leftArray.firstIndex(of: n)!
            continue
        }

        if rightArray.contains(n) {
            answer += "R"
            rPosition = rightArray.firstIndex(of: n)!
            continue
        }

        if centerArray.contains(n) {
            let centerPostion = centerArray.firstIndex(of: n)!
            if centerPostion - lPosition > centerPostion - rPosition {
                answer += "L"
            } else if centerPostion - lPosition < centerPostion - rPosition {
                answer += "R"
            } else { // 같으면
                if hand == "right" {
                    answer += "R"
                } else {
                    answer += "L"
                }
            }
        }

    }

    return answer
}

solution([1, 3, 4, 5, 8, 2, 1, 4, 5, 9, 5], "right")
