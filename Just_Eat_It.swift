/*
    https://codeforces.com/contest/1285/problem/B
 */

func findArr(_ arr: [Int]) -> Bool{
    var sum = 0
    for i in 0..<arr.count{
       sum += arr[i]
        if sum <= 0{
            return false
        }
    }
    print(sum)
    sum = 0
    for i in (0..<arr.count).reversed(){
        sum += arr[i]
        if sum <= 0{
            return false
        }
    }
    print(sum)
    return true
}

findArr([1,2,3,4,5,6,7,8,-1,10])
