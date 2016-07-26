class Robot
  @@names = []
  attr_accessor :name

  def initialize
    @name = reset
  end

  def reset
    self.name = format('%s%s%03d', rand(65..90).chr, rand(65..90).chr, rand(1000))
    @@names.include?(name) ? reset : @@names << name
    name
  end
end
