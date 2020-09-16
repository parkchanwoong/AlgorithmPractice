import UIKit

func solution(_ s:String) -> String {
    var answerArr = [String]()
    var pivot = 0
    for v in s {
        if pivot % 2 == 0 {
            answerArr.append(v.uppercased())
        } else {
            answerArr.append(v.lowercased())
        }
        pivot += 1
        if v == " " { pivot = 0 }
    }

    return answerArr.reduce("", +)
}
solution("try hello world")


// 다른 사람의 풀이

//func solution(_ s:String) -> String {
//    s.components(separatedBy: " ").map { $0.enumerated().map { $0.offset}}
//    let a = s.components(separatedBy: " ").map { $0.enumerated().map { $0.offset % 2 == 0 ? $0.element.uppercased() : $0.element.lowercased() } }
//    return a.map{ $0.map { $0 }.joined() }.joined(separator: " ")
//}
