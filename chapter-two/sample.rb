res = 1 + '10'.to_i
puts "calc result is #{res}"

num = 10
res = 'number is ' + num.to_s
puts res

# false
puts 0.1 * 3.0 == 0.3
# true
puts 0.1r * 3.0r == 0.3

a, b = 0.1, 3.0
puts a.rationalize * b.rationalize == 0.3

n = 11
res_txt =
  if n > 10
    'nは10よりも大きい'
  else
    'nは10よりも小さい'
  end
puts res_txt

point = 7
day = 1
point *= 5 if day == 1
puts point

puts 'He said, "Don\'t speak.'
puts %q!He said, "Don't speak."!

txt = 'Hello.'
puts "He said, \"#{txt}\""
puts %Q!He said, "#{txt}"!

puts "Line1
Line2
"

a = <<TEXT
content, content
content, content
TEXT

puts a

<<HTML
<div>
    <h1>HEAD1</h1>
</div>
HTML

puts 'Hi' * 10

status = 'error'
if status != 'ok'
  puts '異常が発生しています！'
end

unless status == 'ok'
  puts '異常が発生しています！'
else
  puts '正常です！'
end

puts ''.empty?
puts 'watch'.include?('at')

def is_zero?(num)
  if num == 0
    true
  else
    false
  end
end

puts is_zero?(0)
puts is_zero?(5)

a = 'ruby'
a.upcase
puts a

a.upcase!
puts a

def greet = 'hello'
puts greet

puts __FILE__

require_relative 'fizz_buzz'

puts fizz_buzz(5)