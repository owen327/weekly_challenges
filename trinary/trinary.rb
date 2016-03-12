class Trinary
  attr_reader :to_decimal

  def initialize(input)
    @to_decimal = (/^[0-2]+$/ =~ input ? input : '0')
                  .chars.inject(0) { |sum, num| (sum + num.to_i) * 3 } / 3
  end
end
