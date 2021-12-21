
// date time calender
var date = Date()
var calendar = Calendar.current
let year = calendar.component(.year, from: date)
let month = calendar.component(.month, from: date)
let day = calendar.component(.day, from: date)
let hour = calendar.component(.hour, from:date)
let minute = calendar.component(.minute, from: date)
var isoD = "\(year)-\(month)-\(day)"
var isoT = "\(hour):\(minute)"


// after validation
let dateStr = isoD + " " + isoT
let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "yyyy-MM-dd HH:mm"
dateFormatter.locale = Locale.current
//dateFormatter.dateStyle = .full
//dateFormatter.timeStyle = .full
let aa = dateFormatter.date(from: dateStr) ?? Date.now
print(aa.formatted(date: .abbreviated, time: .shortened))
