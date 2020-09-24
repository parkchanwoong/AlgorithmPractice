import UIKit

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var answer = arr1
    for (i,v1) in arr1.enumerated() {
        for (j,_) in v1.enumerated() {
            answer[i][j] = arr1[i][j] + arr2[i][j]
        }
    }
    return answer
}
solution([[1,2],[2,3]], [[3,4],[5,6]])
// 다른 사람의 풀이
//func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
//    return zip(arr1, arr2).map{zip($0,$1).map{$0+$1}}
//}

