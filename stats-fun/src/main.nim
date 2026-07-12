import std/[stats, strformat]

let data = @[2.0, 4.0, 4.0, 4.0, 5.0, 5.0, 7.0, 9.0]

var rs: RunningStat
rs.push(data)

echo fmt"count: {rs.n}"
echo fmt"mean: {rs.mean}"
echo fmt"variance: {rs.variance}"
echo fmt"standard deviation: {rs.standardDeviation}"
echo fmt"min: {rs.min}"
echo fmt"max: {rs.max}"
echo fmt"sum: {rs.sum}"

let temps = @[20.5, 22.1, 19.8, 23.4, 21.0]
var tempStats: RunningStat
tempStats.push(temps)
echo fmt"avg temp: {tempStats.mean:.2f}"
echo fmt"temp range: {tempStats.max - tempStats.min:.2f}"

var incremental: RunningStat
for i in 1..10:
  incremental.push(i.float)
echo fmt"1..10 mean: {incremental.mean}"
echo fmt"1..10 variance: {incremental.variance}"

echo fmt"skewness: {rs.skewness:.4f}"
echo fmt"kurtosis: {rs.kurtosis:.4f}"
