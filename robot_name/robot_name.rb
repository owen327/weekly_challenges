class Robot
  LETTERS = ('A'..'Z').to_a
  NUMBERS = ('0'..'9').to_a
  @@names = []

  def name
    @name ? @name : reset
  end

  def reset
    @name = 2.times.with_object('') { |_, result| result << LETTERS.sample } +
            3.times.with_object('') { |_, result| result << NUMBERS.sample }
    @@names.include?(@name) ? reset : @@names << @name
    @name
  end
end

# Notes:
# @name = ('AA'..'ZZ').to_a.sample + ('000'..'999').to_a.sample
# @name = ('AA000'..'ZZ999').to_a.sample
