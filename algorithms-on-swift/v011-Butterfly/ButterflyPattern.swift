// Batterfly pattern on swift

var row: Int = 0
var input: Int?

print("Enter a number of rows: ")

if let input = Int(readLine()!) {
  row = input
}

print("You entered - \(row)")
// Upper part
for i in (0...row) {
  for j in 1...(2*row-1) {
    if (j>=i) && (j<=2*row-i) {
      print(" ", terminator: "")
    } else {
      print("0", terminator: "")
    }
  }
  print("")
}

// Lower part
for i in (0...row).reversed() {
  for j in (1...(2*row-1)).reversed() {
    if (j>=i) && (j<=2*row-i) {
      print(" ", terminator: "")
    } else {
      print("0", terminator: "")
    }
  }
  print("")
}
