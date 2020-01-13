/*
https://codeforces.com/problemset/problem/25/A
*/

func iqTest(_ arr: [Int]) -> Int{
    var evenArray = [Int](), oddArray = [Int](), result = 0
    for i in 0..<arr.count{
        if arr[i] % 2 == 0{
            evenArray.append(i)
        }else{
            oddArray.append(i)
        }
    }
    result = evenArray.count == 1 ? evenArray[0] + 1 : oddArray[0] + 1
    return result
}

iqTest([2, 4, 7, 8, 10])
