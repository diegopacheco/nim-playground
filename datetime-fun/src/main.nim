import std/[times, strformat]

let rightNow = now()
echo "now: ", rightNow.format("yyyy-MM-dd HH:mm:ss")

let parsed = parse("2025-06-21", "yyyy-MM-dd")
echo fmt"parsed year: {parsed.year}"
echo fmt"parsed month: {parsed.month}"
echo fmt"parsed weekday: {parsed.weekday}"

let future = rightNow + 7.days
echo "in 7 days: ", future.format("yyyy-MM-dd")

let past = rightNow - 2.hours
echo "2 hours ago: ", past.format("HH:mm")

let duration = initDuration(hours = 25)
echo fmt"25h in days: {duration.inDays}"

let dt = dateTime(2000, mJan, 1)
echo fmt"y2k weekday: {dt.weekday}"

let unix = rightNow.toTime().toUnix()
echo fmt"unix time: {unix}"
