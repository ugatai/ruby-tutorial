def to_hex(r, g, b)
  [r, g, b].sum('#') do |code|
    code.to_s(16).rjust(2, '0')
  end
end

def to_ints(hex)
  # #000000
  r = hex[1..2]
  g = hex[3..4]
  b = hex[5..6]
  [r, g, b].map { |code| code.hex }
end