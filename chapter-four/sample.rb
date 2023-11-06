arr = [1, 2, 3]

puts arr[5]
puts arr.size
puts arr.length

arr[5] = 500
p arr

arr << 999
p arr

puts arr.delete_at(5)

quotient, remainder = 14.divmod(3)
puts "商 = #{quotient}、余り = #{remainder}"

nums = [1, 2, 3, 4, 5]
sum = 0
nums.each do |num|
  sum += num
end

puts sum

# 省略形
nums.each { |num| sum += num }
puts sum

nums.delete_if do |num|
  num.odd?
end

p nums

new_nums = nums.map { |num| num * 10 }
p new_nums

new_arr = [1, 2, 3, 4, 5]
even_arr = new_arr.select { |num| num.even? }
p even_arr

p new_arr.select(&:odd?)

chars = %w[a b c]
p chars.join
p chars.join('-')

puts (1..5).class
puts (1...5).class

range_sample_arr = [1, 2, 3, 4, 5]
p range_sample_arr[0...2]

str = 'abc'
p str[1..2]

def liquid?(temp)
  (0...100).include?(temp)
end

p liquid?(50)
p liquid?(-100)

def charge(age)
  case age
  when 0..5
    100
  when 6..15
    300
  when 15..30
    500
  else
    1000
  end
end

p charge(0)
p charge(7)
p charge(30)
p charge(5000)

arr_1 = (1..5).to_a
arr_2 = [*1..5]

p arr_1
p arr_2

nums = []
(1..10).step(2) { |num| nums << num}
p nums