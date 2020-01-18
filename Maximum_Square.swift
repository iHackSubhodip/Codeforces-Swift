/*
 https://codeforces.com/contest/1243/problem/A
 */

func maximumSquare(_ arr: [Int]) -> Int{
    let sortedArr = arr.sorted()
    var count = 0
    for i in (0..<sortedArr.count).reversed(){
        if sortedArr[i] > count{
            count += 1
        }else{
           break
        }
    }
    return count
}

maximumSquare([4,3,1,4,5])


