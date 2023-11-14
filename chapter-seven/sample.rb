class User
  attr_accessor :name
  attr_reader :age
  attr_writer :memo

  # @param [String] name
  # @param [Integer] age
  # @param [String] memo
  def initialize(name, age = 15, memo = '')
    @name = name
    @age = age
    @memo = memo
  end

  # @param [Array] names
  # @return [Array<User>]
  def self.create(names)
    names.map { |name| User.new(name) }
  end

  # @return [nil]
  def say_hello
    puts "Hi Hello, #{@name}."
  end
end

test_user = User.new('test', 20)

puts test_user.name
puts test_user.age
# puts test_user.memo

test_user.name = 'test_2'
test_user.say_hello

# @type [Array<User>]
users = User.create(%w[Alice Bob Carol])
users.each { |user| user.say_hello }

puts '<--------------------------------------------------------------------------------------------------------------->'

class Product
  # @@classVariable = 'クラス変数'

  # 定数なのに変更が可能...
  # Product.freeze インスタンス後
  PERCENT = 0.1
  STATUS = ['hoge', 'foo'].map(&:freeze).freeze

  attr_accessor :name, :price
  private attr_accessor :id
  protected attr_reader :unit

  # @param [Integer] id
  # @param [String] name
  # @param [Integer] price
  # @return [NilClass]
  def initialize(id, name, price)
    @id = id
    @name = name
    @price = price
    @unit = price - price * PERCENT
  end

  # @return [NilClass]
  def get_info
    puts "name: #{@name}, price: #{self.get_formatted_number(@price)}"
  end

  # @param [Product] product
  # @return [Boolean]
  def higher_unit?(product)
    product.unit < @unit
  end

  private

  # @param [Integer] number
  # @return [String]
  def get_formatted_number(number)
    number.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\1,').reverse
  end
end

class Dvd < Product
  attr_accessor :memory

  # @param [Integer] memory
  def initialize(*, memory)
    super
    @memory = memory
  end

  def get_info
    puts "#{super}, memory: #{@memory}"
  end

  alias get_detail get_info
  undef get_detail
  # private_instance_methods :get_info

  # == <- こいつも再定義できる（オーバーライド）
end

product = Product.new(1, 'product_1', 1000)
puts product.name, product.price
product.get_info

# params = { id: 2, name: 'dvd_1', price: 1500 }
# dvd = Dvd.new(*params, 100)
# p dvd.name
# dvd.get_info

puts '<--------------------------------------------------------------------------------------------------------------->'

# puts Product.classVariable
p nil.class

$global = 'globalVariable'
p $global

puts '<--------------------------------------------------------------------------------------------------------------->'

class Foo
  class Bar
    attr_accessor :name

    # @param [String] name
    def initialize(name)
      @name = name
    end
  end

  class BarPrivate
  end

  private_constant :BarPrivate
end

bar = Foo::Bar.new('bar')
puts bar.name

puts '<--------------------------------------------------------------------------------------------------------------->'

alice = 'I am Alice.'
bob = 'I am Bob.'

def alice.shuffle
  chars.shuffle.join
end

puts alice.shuffle
# puts bob.shuffle