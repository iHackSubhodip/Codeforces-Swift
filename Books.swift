/*
 https://codeforces.com/problemset/problem/279/B
 */

func books(_ arr: [Int],_ sum: Int) -> Int{
    var sumVal = 0, start = 0, max = 0
    for i in 0..<arr.count{
        sumVal += arr[i]
        if sumVal > sum{
            sumVal -= arr[start]
            start += 1
        }
        
        if i - start + 1 > max{
            max = i - start + 1
        }
        
    }
    return max
}
books([3,1,2,1], 5)
