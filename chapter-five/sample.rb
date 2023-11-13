# ハッシュ基本
currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }
currencies['italy'] = 'euro'
currencies['japan'] = '円'

p currencies
p currencies['japan']
p currencies['brazil']

currencies.each { |key, value| puts "Key: #{key}, Value: #{value}" }

puts '<--------------------------------------------------------------------------------------------------------------->'

currencies.each do |key_and_value|
  key = key_and_value[0]
  value = key_and_value[1]
  puts "Key: #{key}, Value: #{value}"
end

puts '<--------------------------------------------------------------------------------------------------------------->'

hash_a = { 'x' => 10, 'y' => 20, 'z' => 30 }
hash_b = { 'x' => 10, 'y' => 20, 'z' => 30 }
puts hash_a == hash_b

hash_b = { 'x' => 10, 'z' => 30, 'y' => 20 }
puts hash_a == hash_b

hash_b = { 'x' => 10, 'z' => 30, 'y' => 999 }
puts hash_a == hash_b

puts hash_b.size

currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }
currencies.delete('japan')
p currencies

currencies.delete('italy')
currencies.delete('italy') { |target_key| puts "Not Found Key: #{target_key}" }

puts '<--------------------------------------------------------------------------------------------------------------->'

# シンボル基本
currencies = { :japan => 'yen', :us => 'dollar', :india => 'rupee' }
puts currencies[:japan]

status = :done
case status
when :todo
  puts '未着手'
when :doing
  puts '着手中'
when :done
  puts '完了'
else
  # type code here
end

puts '<--------------------------------------------------------------------------------------------------------------->'

currencies = { :japan => 'yen', :us => 'dollar', :india => 'rupee' }
puts currencies[:japan]
currencies[:italy] = 'euro'
puts currencies

# 省略記法？？ json...
currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }

puts '<--------------------------------------------------------------------------------------------------------------->'

hash_c = { 'str_k' => 'str_v', symbol_k: 'symbol_v' }
puts hash_c['str_k']
puts hash_c[:symbol_k]
puts hash_c[:str_k]
puts hash_c['symbol_k']

puts '<--------------------------------------------------------------------------------------------------------------->'

person = {
  name: 'Alice',
  age: 20,
  friends: %w[Bob Carol],
  phones: { home: '1234-0000', mobile: '5678-0000' },
}

puts person[:name]
puts person[:friends].first
puts person[:phones][:mobile]

puts '<--------------------------------------------------------------------------------------------------------------->'

def buy_burger_set(bur_menu, add_drink: false, add_potato: false)
  # process
end

buy_burger_set('cheese', add_drink: true, add_potato: true)
buy_burger_set('cheese', add_potato: false, add_drink: true)
# buy_burger_set('cheese', add_drink: true, add_salad: true)
buy_burger_set('cheese')

def buy_burger(bur_menu, add_drink:, add_potato:)
  # process
end

# buy_burger('cheese')

args = { add_drink: true, add_potato: true }
buy_burger_set('cheese', **args)

puts '<--------------------------------------------------------------------------------------------------------------->'

currencies = { :japan => 'yen', :us => 'dollar', :india => 'rupee' }
p currencies.keys
p currencies.values
p currencies.has_key?(:japan)
p currencies.has_key?(:italy)

puts '<--------------------------------------------------------------------------------------------------------------->'

h = { us: 'dollar', :india => 'rupee' }
currencies = { japan: 'yen', **h }
p currencies

currencies = { japan: 'yen' }.merge(h)
p currencies

puts '<--------------------------------------------------------------------------------------------------------------->'

def buy_burger(menu, option = {})
  drink = option[:drink]
  potato = option[:potato]
end

buy_burger('cheese', drink: true, potato: true)

puts '<--------------------------------------------------------------------------------------------------------------->'

def buy_burger_others(menu, drink:, potato:, **others) end

buy_burger_others('cheese', drink: true, potato: true, chicken: false)

params = { drink: true, potato: true, chicken: false }
# 2.0 ~ 2.7 までは自動で変換が実施されていた
# buy_burger_others('cheese', params)
buy_burger_others('cheese', **params)

puts '<--------------------------------------------------------------------------------------------------------------->'

def buy_burger_2(menu, option = {}) end

buy_burger_2('menu', { drink: true, potato: true, chicken: false })
buy_burger_2('menu', drink: true, potato: true, chicken: false)

def buy_burger_3(option = {}, menu) end

# buy_burger_3(drink: true, potato: true, chicken: false, 'menu')
buy_burger_3({ drink: true, potato: true, chicken: false }, 'menu')

arr = ['fish', { drink: true, potato: true }]
puts arr[0]
puts arr[1]

arr_2 = ['fish', drink: true, potato: true]
puts arr_2[0]
puts arr_2[1]

puts '<--------------------------------------------------------------------------------------------------------------->'

# buy_burger_3 { drink: true, potato: true, chicken: false }, 'menu'
buy_burger_2 'menu', { drink: true, potato: true, chicken: false }

# puts { drink: true, potato: true, chicken: false }
puts({ drink: true, potato: true, chicken: false })

puts '<--------------------------------------------------------------------------------------------------------------->'

currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }
p currencies.to_a

arr_3 = [[:japan, "yen"], [:us, "dollar"], [:india, "rupee"]]
p arr_3.to_h

nums = [1, 2, 3, 4, 5]
# p nums.to_h

arr_4 = [[:japan, "yen"], [:us, "dollar"], [:japan, "円"]]
p arr_4.to_h

arr_5 = [[:japan, "yen"], [:us, "dollar"], [:india, "rupee"]]
puts Hash[arr_5]

puts '<--------------------------------------------------------------------------------------------------------------->'

hash_d = Hash.new('hello')
a = hash_d[:foo]
b = hash_d[:bar]
p a, b

a.upcase!
p b

# 解決策 => ブロックを使用するようにする
hash_d = Hash.new { 'hello' }

puts '<--------------------------------------------------------------------------------------------------------------->'

# def bar(*arg, **nil)
#   p arg
# end
#
# bar({x: 5})

puts '<--------------------------------------------------------------------------------------------------------------->'

name = 'Alice'
p :"#{name.upcase}"
p({ key: 'value' })

p %s!ruby is fun!
p %i(apple, orrage, melon)

puts '<--------------------------------------------------------------------------------------------------------------->'

string = 'apple'
symbol = :apple

p string.to_sym
puts string.to_sym == symbol

puts '<--------------------------------------------------------------------------------------------------------------->'

a = nil
p a&.upcase

id = nil
id ||= 999
p id

id_2 = 1
id_2 ||= 999
p id_2

# id || id = 999

id_3 = nil
id_3 ||= begin
           a = 10
           b = 10
           a + b
         end
p id_3

# !!find_user return ture or false

p !!true
p !!nil

puts '<--------------------------------------------------------------------------------------------------------------->'