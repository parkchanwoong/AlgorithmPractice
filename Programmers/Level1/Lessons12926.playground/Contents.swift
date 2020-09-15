import UIKit

func solution(_ s:String, _ n:Int) -> String {
    var answer = [Character]()
    let lowcase: [Character] = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    let uppercase: [Character] = lowcase.map{Character($0.uppercased())} //count = 26
    for char in s {
        var tempIndex = 0
        if lowcase.contains(char) {
            let indexTemp = lowcase.firstIndex(of: char)!
            tempIndex = indexTemp + 1 + n > lowcase.count ? indexTemp + n - lowcase.count : indexTemp + n
            answer.append(lowcase[tempIndex])
        } else if uppercase.contains(char) {
            let indexTemp = uppercase.firstIndex(of: char)!
            tempIndex = indexTemp + 1 + n > uppercase.count ? indexTemp + n - uppercase.count : indexTemp + n
            answer.append(uppercase[tempIndex])
        } else {
            answer.append(Character(" "))
        }
    }
    var answerString = ""
    for s in answer {
        answerString += String(s)
    }
    return answerString
}

solution("abc", 25)

// 다른 사람의 풀이

//func solution(_ s:String, _ n:Int) -> String {
//    let alphabets = "abcdefghijklmnopqrstuvwxyz".map { $0 }
//    return String(s.map {
//        guard let index = alphabets.firstIndex(of: Character($0.lowercased())) else { return $0 }
//        let letter = alphabets[(index + n) % alphabets.count]
//        return $0.isUppercase ? Character(letter.uppercased()) : letter
//    })
//}
