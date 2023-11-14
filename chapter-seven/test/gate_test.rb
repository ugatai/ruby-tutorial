require 'minitest/autorun'
require_relative '../gate'
require_relative '../ticket'

class GateTest < Minitest::Test
  def setup
    @umeda = Gate.new(:umeda)
    @juso = Gate.new(:juso)
    @mikuni = Gate.new(:mikuni)
  end

  def test_umeda_to_juso
    ticket = Ticket.new(160)
    @umeda.enter(ticket)
    assert @juso.exit(ticket)
  end

  def test_umeda_to_mikuni_not_enough_fare
    ticket = Ticket.new(160)
    @umeda.enter(ticket)
    refute @mikuni.exit(ticket)
  end

  def test_umeda_to_mikuni_enough_fare
    ticket = Ticket.new(190)
    @juso.enter(ticket)
    assert @mikuni.exit(ticket)
  end

  def test_juso_to_mikuni
    ticket = Ticket.new(160)
    @umeda.enter(ticket)
    assert @juso.exit(ticket)
  end
end