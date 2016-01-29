class Octal
  def initialize(input)
    @value = (/^[0-7]+$/).match(input) ? input : '0'
  end

  def to_decimal
    @value.chars.inject(0) {|sum, num| (sum + num.to_i ) * 8 } / 8
  end
end
