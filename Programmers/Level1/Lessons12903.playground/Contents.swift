import UIKit

func solution(_ s:String) -> String {
    var arr: [String] = s.map{"\($0)"}
    var targetIndex = 0
    var answer = ""

    if arr.count % 2 == 0 { // 짝수
        if arr.count == 2 {
            answer = arr.reduce("", +)
        } else {
            for _ in arr where arr.count > 2 {
                arr.removeLast()
                arr.removeFirst()
            }
            answer = arr.reduce("", +)
        }
    } else { //홀수
       targetIndex = arr.count / 2
        answer = arr[targetIndex]
    }

    return answer
}

solution("qwer")

// 다른 사람의 풀이

//func solution(_ s:String) -> String {
//
//    if Array(s).count % 2 == 0 {
//        return String(Array(s)[(s.count/2)-1...(s.count/2)])
//    }else{
//        return String(Array(s)[s.count/2])
//    }
//}
