//Solution goes in Sources
import Foundation

class Gigasecond{
    
    let duration: Int = 1000000000
    var description: String!
    let dateFormatter = DateFormatter() //1959-07-19T00:00:00
    
    init?(from: String) {
        //create date formatter
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        //convert input into milliseconds
        let date = dateFormatter.date(from: from)
        if (date != nil) {
            //adding duration
            let result = self.currentTimeMillis(date: date!) + self.duration
            
            //print output
            let future = Date(timeIntervalSince1970: TimeInterval(result))
            self.description = dateFormatter.string(from: future)
        } else {
            return nil
        }
    }
    
    func currentTimeMillis(date: Date) -> Int{
        let nowDouble = date.timeIntervalSince1970.rounded()
        return Int(nowDouble)
    }
}
