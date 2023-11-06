require 'minitest/autorun'

class SampleTest < Minitest::Test
  def test_sample
    # pass
    assert_equal 'RUBY', 'ruby'.upcase
    # fail
    # assert_equal 'RUBY', 'ruby'.capitalize
    # error
    # assert_equal 'RUBY', nil.upcase
  end
end