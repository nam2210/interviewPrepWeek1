//Solution goes in Sources
class Year {
    
    let year:Int
    var isLeapYear: Bool;
    
    init(calendarYear year: Int){
        self.year = year
    
        if (year % 4 == 0){
            if (year % 100 == 0) {
                self.isLeapYear = (year % 400 == 0)
            } else {
                self.isLeapYear = true
            }
        } else {
            self.isLeapYear = false
        }
        
    }
    
    //chia het cho 4
        //chia het cho 100 thi khong phai
        //chia het cho 400 thi

}
