class Robot
  @@names = []
  attr_reader :name

  def initialize
    @name = reset
  end

  def reset
    @name = format('%s%s%03d', rand(65..90).chr, rand(65..90).chr, rand(1000))
    @@names.include?(name) ? reset : @@names << name
    name
  end
end
