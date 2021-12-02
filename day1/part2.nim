import strutils

var
  line: string
  numIncreases = 0
  data: seq[int]

while stdin.readLine(line):
  let value = parseInt(line)
  data.add(value)

  if data.len < 4:
    continue

  let
    prevValue = data[0] + data[1] + data[2]
    currValue = data[1] + data[2] + data[3]

  if currValue > prevValue:
    inc numIncreases

  # Remove the oldest data point when we're done with it.
  data.delete(0)

echo numIncreases

