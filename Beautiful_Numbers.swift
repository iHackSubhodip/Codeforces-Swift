/*
 https://codeforces.com/contest/1265/problem/B
 */

func beautifulnumbers(_ arr: [Int]){

    var arrStr = [Int](repeating: 0, count: arr.count + 1)
    var helpArr = [Int](repeating: 0, count: arr.count)

    for i in 0...arr.count - 1{
        arrStr[arr[i]] = i
    }

    var mini = arr.count, maxi = -1
    for i in 1...arr.count{
        print(" prev \(mini) \(maxi) \(i) \(arrStr)")

        mini = min(mini, arrStr[i])
        maxi = max(maxi, arrStr[i])

        print(" now \(mini) \(maxi) \(i) \(arrStr)")
        print("\n")

        if maxi - mini + 1 == i{
            helpArr[i - 1] = 1
        }

    }
    print(helpArr)

}
