//
//  Created by BURAK KEBAPCI on 2/13/19.
//  Copyright © 2019 BurakKebapci. All rights reserved.
//

func SquareRoot(_ n: Double) -> Double {
        var start: Int = 0
        var end: Int = Int(n)
        var mid: Int
        let precision: Int = 4
        let number:Int = Int(n)
        
        var ans: Float = 0.0
        
        while start <= end {
            mid = (start + end) / 2
            if mid * mid == number {
                ans = Float(mid)
                break
            }
            
            if mid * mid < number {
                start = mid + 1
                ans = Float(mid)
            } else {
                end = mid - 1
            }
        }
        
        var increment: Float = 0.1
        for _ in 0..<precision {
            while ans * ans <= Float(number) {
                ans = ans + increment
            }
            ans = ans - increment
            increment = increment / 10
        }
        return Double(ans)
    }
    
   // USAGE
   
     print(testEval.SquareRoot(25.0))
        print(testEval.SquareRoot(2.0))
        print(testEval.SquareRoot(2.0))
 
