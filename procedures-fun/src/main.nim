import strformat

proc addOne(a: int): int =
    return a + 1

proc theBest(team:string): string = 
    case team
    of "gremio", "GREMIO", "Gremio": 
        return fmt"The best team is {team}"
    else: 
        return fmt"the team {team} is meh!"

let result = addOne(10)
echo result

echo theBest("Gremio")