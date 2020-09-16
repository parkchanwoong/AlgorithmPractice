import UIKit

func solution(_ n:Int) -> Int
{
    return String(n).map {Int(String($0))!}.reduce(0, +)
}
solution(987)

// 다른 사람의 풀이

//func solution(_ n:Int) -> Int
//{
//    return String(n).reduce(0, {$0+Int(String($1))!});
//}
