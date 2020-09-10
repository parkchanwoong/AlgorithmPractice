import Foundation

let arrayTemp = [1,5,2,6,3,7,4]
let commandsTemp = [[2,5,3],[4,4,1],[1,7,3]]

//func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
//    var answer = [Int]()
//
//    for command in commands {
//        let newArr = array.dropFirst(command[0] - 1).dropLast(array.count - command[1]).sorted()
//        print(newArr)
//        answer.append(newArr[command[2] - 1])
//    }
//
//    return answer
//}

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    return commands.map({(key) in
        return array[(key[0]-1)...(key[1]-1)].sorted()[key[2]-1]
    })
}

let answer = solution(arrayTemp, commandsTemp)
print("answer ::: ",answer)

