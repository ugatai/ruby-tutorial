def fizz_buzz(num)
  return '引数の型が整数値ではありません' unless num.is_a?(Integer)
  if num % 15 == 0
    'Fizz Buzz'
  elsif num % 3 == 0
    'Fizz'
  elsif num % 5 == 0
    'Buzz'
  else
    num.to_s
  end
end