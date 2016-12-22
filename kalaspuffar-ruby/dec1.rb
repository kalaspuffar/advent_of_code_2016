instructions = "R5, L5, R5123, R3"
instructions.split(", ").each {
  |x|
  puts x[0]
  puts x.byteslice(1..5).to_i + 1
}
