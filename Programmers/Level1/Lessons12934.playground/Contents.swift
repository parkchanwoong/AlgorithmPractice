import Foundation
// 연산 시간이 오래걸려 못품(실패)
// 다른 사람의 풀이
// sqrt를 사용하기위해 import Foundation 해야함
func solution(_ n:Int64) -> Int64 {
    let t = Int64(sqrt(Double(n)))
    return t * t == n ? (t+1)*(t+1) : -1
}
solution(50000000000000)
