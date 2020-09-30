import UIKit

func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
        var answer: [String] = []
    
    let arr1String = arr1.map {String($0,radix: 2)}.map { value -> String in
        var valueTemp = value
        while valueTemp.count != n {
            valueTemp.insert("0", at: value.startIndex)
        }
        return valueTemp
    }
    .reduce("", +)
    let arr2String = arr2.map {String($0,radix: 2)}.map { value -> String in
        var valueTemp = value
        while valueTemp.count != n {
            valueTemp.insert("0", at: value.startIndex)
        }
        return valueTemp
    }
    .reduce("", +)
    let temp = zip(arr1String, arr2String).map { v1, v2 -> String in
        if v1 == "1" || v2 == "1" {
            return "#"
        } else {
            return " "
        }
    }
    var tempString = ""
    for t in temp {
        tempString += t
        if tempString.count == n {
            answer.append(tempString)
            tempString = ""
        }
        
    }
    return answer
}

solution(5, [9,20,28,18,11], [30,1,21,17,28])

// 다른 사람의 풀이

//func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
//    return (0..<n).map { String(String(arr1[$0]|arr2[$0]|2<<(n - 1), radix: 2).map { $0 == "1" ? "#" : " " }[1...n]) }
//}
