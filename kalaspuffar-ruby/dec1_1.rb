=begin

The Document indicates that you should start at the given coordinates (where you just landed) and face North. Then, follow the provided sequence: either turn left (L) or right (R) 90 degrees, then walk forward the given number of blocks, ending at a new intersection.

There's no time to follow such ridiculous instructions on foot, though, so you take a moment and work out the destination. Given that you can only walk on the street grid of the city, how far is the shortest path to the destination?

For example:

Following R2, L3 leaves you 2 blocks East and 3 blocks North, or 5 blocks away.

R2, R2, R2 leaves you 2 blocks due South of your starting position, which is 2 blocks away.

R5, L5, R5, R3 leaves you 12 blocks away.

How many blocks away is Easter Bunny HQ?

=end

direction, x, y = 0, 0, 0
instructions = "R2, L5, L4, L5, R4, R1, L4, R5, R3, R1, L1, L1, R4, L4, L1, R4, L4, R4, L3, R5, R4, R1, R3, L1, L1, R1, L2, R5, L4, L3, R1, L2, L2, R192, L3, R5, R48, R5, L2, R76, R4, R2, R1, L1, L5, L1, R185, L5, L1, R5, L4, R1, R3, L4, L3, R1, L5, R4, L4, R4, R5, L3, L1, L2, L4, L3, L4, R2, R2, L3, L5, R2, R5, L1, R1, L3, L5, L3, R4, L4, R3, L1, R5, L3, R2, R4, R2, L1, R3, L1, L3, L5, R4, R5, R2, R2, L5, L3, L1, L1, L5, L2, L3, R3, R3, L3, L4, L5, R2, L1, R1, R3, R4, L2, R1, L1, R3, R3, L4, L2, R5, R5, L1, R4, L5, L5, R1, L5, R4, R2, L1, L4, R1, L1, L1, L5, R3, R4, L2, R1, R2, R1, R1, R3, L5, R1, R4"
instructions.split(", ").each {
  |s|

  if s[0] == "R"
    direction += 1
  else
    direction -= 1
  end

  if(direction > 3)
    direction = 0
  end
  if(direction < 0)
    direction = 3
  end

  case direction
    when 0
      x += s.byteslice(1..5).to_i
    when 1
      y += s.byteslice(1..5).to_i
    when 2
      x -= s.byteslice(1..5).to_i
    when 3
      y -= s.byteslice(1..5).to_i
  end
}
puts x.abs + y.abs