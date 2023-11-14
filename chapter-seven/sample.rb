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