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

puts Product.include?(Loggable)
p Product.included_modules
p Product.ancestors

# クラスかモジュールを継承していればtrueが返りますよ
product_2 = Product.new
p product_2.is_a?(Product)
p product_2.is_a?(Loggable)

puts '<--------------------------------------------------------------------------------------------------------------->'

# Enumerableモジュールはインクルード先にeachメソッドがあれば（配列繰り返し処理系）
puts Array.include?(Enumerable)

# Comparableモジュールはインクルード先に<=>メソッドがあれば（比較演算系）
class Tempo
  include Comparable

  attr_reader :bpm

  # @param [Integer] bpm
  # @return [NilClass]
  def initialize(bpm)
    @bpm = bpm
  end

  # @param [Tempo] tempo
  # @return [NilClass|Boolean]
  def <=>(tempo)
    tempo.is_a?(Tempo) ? @bpm <=> tempo.bpm : nil
  end
end

tem1 = Tempo.new(120)
tem2 = Tempo.new(150)

puts tem1 > tem2
puts tem2 > tem1
puts tem1 == tem2

puts '<--------------------------------------------------------------------------------------------------------------->'

# 名前空間の衝突を避けるモジュールの活用
module Player
  class Second
    attr_accessor :id, :name

    # @param [Integer] id
    # @param [String] name
    # @return [NilClass]
    def initialize(id, name)
      @id = id
      @name = name
    end
  end
end

module Clock
  class Second
    attr_accessor :digits

    # @param [Integer] digits
    # @return [NilClass]
    def initialize(digits)
      @digits = digits
    end
  end
end

player = Player::Second.new(1, 'name')
clock = Clock::Second.new(100)

puts player.name
puts clock.digits

puts '<--------------------------------------------------------------------------------------------------------------->'

module Loggable
  # 設定値の初期化
  @url = ''
  @mode = true

  # 設定値のアクセサの定義
  class << self
    attr_accessor :url, :mode
  end

  PREFIX = '[LOG]:'

  # @param [String] text
  def log(text)
    puts "#{PREFIX} #{text}"
  end

  module_function :log
end

Loggable.log('得意メソッドとして定義')
puts Loggable::PREFIX

Loggable.url = 'https://www.ruby-lang.org/ja/'
puts Loggable.url

puts '<--------------------------------------------------------------------------------------------------------------->'

module Loggable2
  def name
    "<<#{super}>>"
  end
end

class User
  prepend Loggable2

  def name
    'User Class'
  end
end

user2 = User.new
puts user2.name

puts '<--------------------------------------------------------------------------------------------------------------->'

module StringShuffle
  refine String do
    def shuffle
      chars.shuffle.join
    end
  end
end

class User
  using StringShuffle

  attr_accessor :name

  # @param [String] name
  # @return [NilClass]
  def initialize(name)
    @name = name
  end

  def shuffle_name
    @name.shuffle
  end
end

user3 = User.new('Ugawa')
puts user3.shuffle_name
# puts 'Ugawa'.shuffle_name