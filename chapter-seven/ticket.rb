# frozen_string_literal: true

class Ticket
  attr_reader :fare, :stamp_at

  # @param [Integer] fare
  def initialize(fare)
    @fare = fare
  end

  # @param [Symbol] gate_name
  def stamp(gate_name)
    @stamp_at = gate_name
  end
end
