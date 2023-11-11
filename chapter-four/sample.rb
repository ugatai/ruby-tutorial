require 'set'

arr = [1, 2, 3]
puts arr[0]
puts arr[5]
puts arr.size # or puts arr.length

puts '------------------------------'

arr[5] = 6
p arr
arr << 7
p arr

puts '------------------------------'

arr.delete_at(5)
p arr

puts '------------------------------'

quotient, remainder = 15.divmod(3)
puts "商 = #{quotient}、余り = #{remainder}"

puts '------------------------------'

nums = [1, 2, 3, 4, 5]
sum = 0
nums.each do |num|
  sum += num
end
puts sum

# 省略形
nums_2 = [1, 2, 3, 4, 5]
sum = 0
nums_2.each { |num| sum += num }
puts sum

puts '------------------------------'

nums_3 = [1, 2, 3, 4, 5]
nums_3.delete_if { |num| num.odd? }
p nums_3

nums_6 = [1, 2, 3, 4, 5]
p nums_6.select(&:odd?)

puts '------------------------------'

nums_4 = [1, 2, 3, 4, 5]
new_nums = nums_4.map { |num| num * 10 }
p new_nums

puts '------------------------------'

nums_5 = [1, 2, 3, 4, 5]
even_arr = nums_5.select { |num| num.even? }
p even_arr

puts '------------------------------'

chars = %w[a b c]
puts chars.join
puts chars.join('-')

puts '------------------------------'

puts (1..5).class
puts (1...5).class

puts '------------------------------'

range_sample_arr = [1, 2, 3, 4, 5]
p range_sample_arr[0..2]

puts '------------------------------'

str = 'abc'
p str[1..2]

puts '------------------------------'

def liquid?(temp)
  (0..100).include?(temp)
end

p liquid?(50)
p liquid?(-100)

puts '------------------------------'

def charge(age)
  case age
  when 0..5
    50
  when 6..15
    100
  when 16..30
    300
  else
    500
  end
end

p charge(0)
p charge(6)
p charge(16)
p charge(50)

puts '------------------------------'

arr_1 = (1..5).to_a
arr_2 = [*1..5]
p arr_1
p arr_2

puts '------------------------------'

nums_7 = []
(1..10).step(2) { |num| nums_7 << num }
p nums_7

puts '------------------------------'

nums_8 = [1, 2, 3, 4, 5]
p nums_8[0, 3]
p nums_8.values_at(0, 1, 2)

p nums_8[nums_8.size - 1]
p nums_8[-1]
p nums_8.last
p nums_8[-3, 3]

p nums_8.first
p nums_8.first(3)

nums_8[-5] = -1
p nums_8

nums_8[0..2] = 1
p nums_8

puts '------------------------------'

a = []
a.push(1)
a.push(2, 3)
p a

puts '------------------------------'

a.delete(1)
p a

puts '------------------------------'

b = [1]
c = [2, 3]

p b.concat(c)
p b

# 原則こっち（演算子）
b = [1]
c = [2, 3]

p b + c
p b

puts '------------------------------'

a = [1, 2, 3]
b = [3, 4, 5]
p a | b
p a & b
p a - b

puts '------------------------------'

a = Set[1, 2, 3]
b = Set[3, 4, 5]
p a | b
p a & b
p a - b

puts '------------------------------'

e, f = 100, 200, 300
p e, f

e, *f = 100, 200, 300
p e, f

e, * = 100, 200, 300
p e

a, *b, c, d = 1, 2, 3, 4, 5
pp a, b, c, d

puts '------------------------------'

a = [0]
b = [1, 2, 3]
a.push(b)
p a

a = [0]
b = [1, 2, 3]
a.push(*b)
p a

jp = ['Japan', ' 日本']
country = ' 日本'
greet = case country
        when *jp
          'こんにちは！'
        else
          # type code here
        end
puts greet

puts '------------------------------'

def greet(*names)
  puts "#{names.join('さんと')} こんにちは！！"
end

greet(*%w[田中 吉田 中村])

def foo(a, *b, c, d)
  puts "a=#{a}, b=#{b}, c=#{c}, d=#{d}"
end

# *b rest引数（RubyMineだと引数指定時に補完されるからすごい...）
foo(1, 2, 3, 4, 5)

puts '------------------------------'

a = [1, 2, 3]
p [*a]
p [1, 2, 3, *a]

puts '------------------------------'

a = [1, 2, 3]
b = [1, 2, 3]
p a == b
p a == b << 4

puts '------------------------------'

p 'Ruby'.chars
p 'Ruby,Java,Php'.split(',')

puts '------------------------------'

a = Array.new
p a
a = Array.new(5, 7)
p a
a = Array.new(5) { |n| n * 10 }
p a

a = Array.new(5, 'default')
p a

first_val = a.first
p first_val.upcase!
p a

a = Array.new(5) { 'default' }
first_val = a.first
p first_val.upcase!
p a

