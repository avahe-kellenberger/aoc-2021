import strutils

var
  line: string
  lastValue = -1
  numIncreases = 0

while stdin.readLine(line):
  let value = parseInt(line)
  if value > lastValue:
    inc numIncreases
  lastValue = value

echo max(0, numIncreases - 1)

