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
