UNITS = { m: 1.0, ft: 3.28, in: 39.37 }
# キーワード引数はシンボルではないので関数内で参照する時は":"いらない
def convert_length(length, from:, to:)
  (length / UNITS[from] * UNITS[to]).round(2)
end