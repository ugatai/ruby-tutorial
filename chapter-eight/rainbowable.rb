module Rainbowable

  # @return [String]
  def rainbow
    to_s.each_char.map.with_index do |char, index|
      color = 31 + index % 6
      "\e[#{color}m#{char}"
    end.join + "\e[0m"
  end
end
