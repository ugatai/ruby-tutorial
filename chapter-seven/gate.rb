class Gate
  STATIONS = [:umeda, :juso, :mikuni]
  FARES = [160, 190]

  # @param [Symbol] name
  def initialize(name)
    @name = name
  end

  # @param [Ticket] ticket
  def enter(ticket)
    ticket.stamp(@name)
  end

  # @param [Ticket] ticket
  # @return [Boolean]
  def exit(ticket)
    fare = calc_fare(ticket)
    fare <= ticket.fare
  end

  private

  # @param [Ticket] ticket
  # @return [Integer]
  def calc_fare(ticket)
    from = STATIONS.index(ticket.stamp_at)
    to = STATIONS.index(@name)
    FARES[to - from - 1]
  end
end