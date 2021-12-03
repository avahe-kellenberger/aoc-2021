import strutils

var
  line: string
  x: int
  y: int
  aim: int

while stdin.readLine(line):
  let
    split = line.split(" ")
    dir = split[0]
    value = parseInt(split[1])

  case dir:
    of "forward":
      x += value
      y += aim * value
    of "up":
      aim -= value
    of "down":
      aim += value
    else:
      raise newException(Exception, "Invalid direction: " & dir)

echo x * y

