//Solution goes in Sources
import Foundation

class Squares{
    
    let total: Int
    var squareOfSums: Int = 0
    var sumOfSquares: Int = 0
    var differenceOfSquares: Int = 0
    
    init(_ total: Int){
        self.total = total
        self.squareOfSums = mySquareOfSums()
        self.sumOfSquares = mySumOfSquares()
        self.differenceOfSquares = self.squareOfSums - self.sumOfSquares
    }
    
    func mySquareOfSums() -> Int{
        var result = 0;
        for index in 1...self.total {
            result += index
        }
        return Int(pow(Double(result), Double(2)))
    }
    
    func mySumOfSquares() -> Int{
        var result: Double = 0;
        for index in 1...self.total {
            result += pow(Double(index), 2)
        }
        return Int(result)
    }

    

}
