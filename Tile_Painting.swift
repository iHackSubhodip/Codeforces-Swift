//
//  Tile_Painting.swift
//  
//
//  Created by Subhodip Banerjee on 18/01/20.
//

func tilePainiing(_ n: Int) -> Int{
    var answer = n
    let i = 2
    while i*i <= n{
        answer = gcd(answer, i)
        answer = gcd(answer, n/i)
    }
    return answer
}

func gcd(_ a: Int,_ b: Int) -> Int{
    if b == 0{
        return a
    }
    
    return gcd(a, b%a)
}

tilePainiing(13)
