import strutils

var
  line: string
  x: int
  y: int

while stdin.readLine(line):
  let
    split = line.split(" ")
    dir = split[0]
    value = parseInt(split[1])

  case dir:
    of "forward":
      x += value
    of "up":
      y -= value
    of "down":
      y += value
    else:
      raise newException(Exception, "Invalid direction: " & dir)

echo x * y

