import UIKit

func solution(_ strings:[String], _ n:Int) -> [String] {
    
    var dicTemp = [String:String]()
    for str in strings {
        for (index,value) in str.enumerated() where index == n {
            dicTemp[str] = "\(value)"
        }
    }
    let dicTemp2 = dicTemp.sorted { $0.key < $1.key }.sorted{ $0.value < $1.value}

    return dicTemp2.map {$0.key}
}

solution(["abce","abcd","cdx"], 2)

// 다른 사람의 풀이

//func solution(_ strings:[String], _ n:Int) -> [String] {
//    return strings.sorted{  Array($0)[n] == Array($1)[n] ? $0 < $1 :  Array($0)[n] < Array($1)[n] }
//}
