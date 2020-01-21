/*
 https://codeforces.com/contest/1245/problem/A
 */

func goodNumbersColoring(_ a: Int,_ b: Int) -> String{
    let value = gcdValue(a, b)
    if value == 1{
        return "FINITE"
    }else{
        return "INFINITE"
    }
}

func gcdValue(_ a: Int,_ b: Int) -> Int{
    if b == 0 { return a }
    return gcdValue(a,b%a)
}

goodNumbersColoring(10, 10)
