/*
 https://codeforces.com/contest/1243/problem/B1
 */

func characterSwap(_ firstString: String, _ secondString: String) -> Bool{
    var count = 0, diffArray = [Int]()

    for i in 0..<Array(firstString).count{
        if Array(firstString)[i] != Array(secondString)[i]{
            if count > 2{
                break
            }
            diffArray.append(i)
            count += 1
        }
    }
    
    if count > 2 || count == 1{
        return false
    }else{
        if count == 0{
            return true
        }else{
          canBeEqual(firstString, secondString, diffArray[0], diffArray[1])
        }
    }
    return true
}

func canBeEqual(_ firstString: String, _ secondString: String,_ i: Int,_ j: Int) -> Bool{
    if (Array(firstString)[i] == Array(firstString)[j]) && (Array(secondString)[j] == Array(secondString)[j]){
        return true
    }
    return false
}

characterSwap("souse", "houhe")
