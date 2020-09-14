import UIKit

func solution(_ s:String) -> String {
    let strings = s.sorted(by: >)
    var answer = ""
    for str in strings {
        answer += "\(str)"
    }
    return answer
}

solution("Zbcdefg")

// 다른 사람의 풀이

//func solution(_ s:String) -> String {
//    return String(s.sorted { $0 > $1 })
//}
