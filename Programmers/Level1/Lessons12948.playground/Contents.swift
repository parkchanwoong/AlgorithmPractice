import UIKit

func solution(_ phone_number:String) -> String {
    var answer = ""
    for (i, v) in phone_number.enumerated() {
        if i >= phone_number.count - 4 {
            answer += String(v)
        } else {
            answer += "*"
        }

    }
    return answer
}
solution("01033334444")

// 다른 사람의 풀이

//func solution(_ phone_number:String) -> String {
//    return String("\(String(repeating: "*", count: phone_number.count - 4))\(phone_number.suffix(4))")
//}
