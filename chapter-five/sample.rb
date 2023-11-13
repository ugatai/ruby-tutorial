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



