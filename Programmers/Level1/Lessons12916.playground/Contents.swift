import UIKit

func solution(_ s:String) -> Bool
{
    var ans: Bool = false

    let pCount = s.lowercased().filter {$0 == "p"}.count
    let yCount = s.lowercased().filter {$0 == "y"}.count
    ans = pCount == yCount ? true : false
    return ans
}

solution("pPoooyY")

// 다른 사람의 풀이

//func solution(_ s:String) -> Bool
//{
//    return string.components(separatedBy: "p").count == string.components(separatedBy: "y").count
//}
