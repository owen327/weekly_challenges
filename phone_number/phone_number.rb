class PhoneNumber
  def initialize(input)
    @num = input =~ /[a-zA-Z]/ ? '' : input.gsub(/\D/, '')
  end

  def number
    valid = (@num[0] == '1' && @num.length == 11) || @num.length == 10
    valid ? @num[-10..-1] : '0000000000'
  end

  def area_code
    number[0..2]
  end

  def to_s
    "(#{area_code}) #{number[3..5]}-#{number[6..10]}"
  end
end
