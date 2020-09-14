import UIKit

func solution(_ s:String) -> Bool {
    return (s.count == 4 || s.count == 6) && (Int(s) == nil ? false : true)
}

solution("a1234")

// 다른 사람의 풀이

//func solution(_ s:String) -> Bool {
//    return (Int(s) != nil && (s.count == 4 || s.count == 6)) ? true : false
//}
