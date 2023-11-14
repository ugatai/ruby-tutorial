module Loggable

  # @param [String] text
  def log(text)
    puts "[LOG]: #{text}"
  end
end

class Product
  # インスタンスメソッドとして定義される（クラス内定義の場合）
  include Loggable
  # クラスメソッドとして定義される（クラス内定義の場合）
  extend Loggable

  def title
    log 'Product Class'
  end
end

class User
  include Loggable
  extend Loggable

  def name
    log 'User Class'
  end
end

product = Product.new
user = User.new

product.title
user.name

Product.log('Product')
User.log('User')

# クラス内定義がいらない
Product.include Loggable
Product.extend Loggable

puts '<--------------------------------------------------------------------------------------------------------------->'