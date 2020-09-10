import UIKit

func solution(_ a:Int, _ b:Int) -> String {
    let dic = ["1": 31,
               "2": 29,
               "3": 31,
               "4": 30,
               "5": 31,
               "6": 30,
               "7": 31,
               "8": 31,
               "9": 30,
               "10": 31,
               "11": 30,
               "12": 31]

    let weekDic = ["1": "FRI",
                   "2": "SAT",
                   "3": "SUN",
                   "4": "MON",
                   "5": "TUE",
                   "6": "WED",
                   "0": "THU"]

    let month = a - 1
    var day = 0
    if month > 0 {
        for d in 1...month {
            day += dic["\(d)"]!
        }
    }
    let rema = (day + b) % 7

    let weekString = weekDic["\(rema)"]!

    return weekString
}


solution(5, 24)

//고수의 풀이
/*
 func solution(_ a:Int, _ b:Int) -> String {

     let w = ["THU", "FRI", "SAT", "SUN", "MON", "TUE", "WED"]
     let monthDay = [ 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
     let totalDay = monthDay[0..<a-1].reduce(0, +) + b

     return w[totalDay % 7]
 }
 **/
