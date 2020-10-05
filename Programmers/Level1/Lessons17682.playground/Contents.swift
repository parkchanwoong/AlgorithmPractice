import UIKit

func solution(_ dartResult:String) -> Int {

    let arrTemp = dartResult.map{String($0)}
    var plzSkip = false
    var dartArray = [String]()
    for (i,v) in arrTemp.enumerated() {
        if plzSkip {
            plzSkip = false
            continue
        }

        if v == "1" && arrTemp[i+1] == "0" {
            plzSkip = true
            dartArray.append("10")
            continue
        }
        dartArray.append(v)

    }
    var answerStr = [String]()
    let bonus = ["S","D","T"]
    let option = ["*","#"]

    for (i,v) in dartArray.enumerated() {
        if bonus.contains(String(v)) {
            var stringTemp = ""
            switch String(v) {
            case "S":
                stringTemp = String(Int(dartArray[i-1])!)
            case "D":
                stringTemp = String(Int(dartArray[i-1])! * Int(dartArray[i-1])!)
            case "T":
                stringTemp = String(Int(dartArray[i-1])! * Int(dartArray[i-1])! * Int(dartArray[i-1])!)
            default:
                fatalError()
            }
            answerStr.append(stringTemp)
        }

        if option.contains(String(v)) {
            switch String(v) {
            case "*":
                if answerStr.count > 1 {
                    let beforeValue = answerStr[answerStr.count - 2]
                    var newElement = String(Int(beforeValue)! * 2)
                    answerStr[answerStr.count - 2] = newElement
                    let currentValue = answerStr[answerStr.count - 1]
                    newElement = String(Int(currentValue)! * 2)
                    answerStr[answerStr.count - 1] = newElement
                } else {
                    let currentValue = answerStr[answerStr.count - 1]
                    let newElement = String(Int(currentValue)! * 2)
                    answerStr[answerStr.count - 1] = newElement
                }
            case "#":
                let currentValue = answerStr[answerStr.count - 1]
                let newElement = String(Int(currentValue)! * -1)
                answerStr[answerStr.count - 1] = newElement
            default:
                fatalError()
            }
        }

    }

    return answerStr.map{Int($0)!}.reduce(0, +)
}
solution("1S2D*3T")

// 다른 사람의 풀이
//func solution(_ dartResult:String) -> Int {
//
//        let numberList = dartResult.split(whereSeparator: {$0.isLetter || $0 == "#" || $0 == "*"})
//        let letterList = dartResult.split(whereSeparator: {$0.isNumber})
//
//        var totalScore = 0
//
//        for (i, (number, letter)) in zip(numberList, letterList).enumerated() {
//            var score = 0
//            if let number = Int(number) {
//                score = letter.contains("D") ? number * number : letter.contains("T") ? number * number * number : number
//
//            }
//
//            if letter.contains("*") {
//                score *= 2
//            } else if letter.contains("#") {
//                score = -score
//            }
//
//            if i != 2 {
//                if letterList[i + 1].contains("*") {
//                    score *= 2
//                }
//            }
//
//            totalScore += score
//
//        }
//
//
//        return totalScore
//}


