/*
 https://codeforces.com/contest/1059/problem/B
 */

func forgery(_ a: Int,_ b: Int,_ inputArray: [[String]]) -> Bool{
    
    var booleanArray = Array(repeating: Array(repeating: false, count: b), count: a)
    
    for i in 1..<a - 1{
        for j in 1..<b - 1{
            if inputArray[i-1][j-1] == "#" && inputArray[i+1][j+1] == "#"{
                if inputArray[i-1][j] == "#" && inputArray[i+1][j] == "#"{
                    if inputArray[i][j-1] == "#" && inputArray[i][j+1] == "#"{
                        if inputArray[i-1][j+1] == "#" && inputArray[i+1][j-1] == "#"{
                            booleanArray[i - 1][j - 1] = true
                            booleanArray[i + 1][j + 1] = true
                            booleanArray[i - 1][j] = true
                            booleanArray[i + 1][j] = true
                            booleanArray[i][j - 1] = true
                            booleanArray[i][j + 1] = true
                            booleanArray[i - 1][j + 1] = true
                            booleanArray[i + 1][j - 1] = true
                        }
                    }
                }
            }
        }
    }

    for i in 0..<a{
        for j in 0..<b{
            if inputArray[i][j] == "#"{
                if !booleanArray[i][j]{
                    return false
                }
            }
        }
    }
    
    return true
}

forgery(3, 3, [["#", "#", "#"], ["#", "#", "#"],["#", "#", "#"]])
