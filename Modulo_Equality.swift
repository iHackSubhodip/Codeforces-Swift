/*
 https://codeforces.com/problemset/problem/1269/B
 */

func maxModulo(_ a: [Int],_ b: [Int],_ m: Int) -> Int{
    var x = [Int]()
    var k = [Int]()
    let aSort = a.sorted()
    let bSort = b.sorted()
    for i in 0..<a.count{
        x.append(((bSort[0] - aSort[i]) + m) % m)
    }
    let xSort = x.sorted()

    for i in 0..<a.count{
        k.removeAll()
        for j in 0..<a.count{
            k.append((aSort[j] + xSort[i]) % m)
        }
        let kSort = k.sorted()
        var isValid = true
        for j in 0..<a.count{
            if kSort[j] != bSort[j]{
                isValid = false
                break
            }
        }

        if isValid{
            return xSort[i]
        }
    }
    return 0
}

maxModulo([0,0,2,1], [2,0,1,1], 3)
