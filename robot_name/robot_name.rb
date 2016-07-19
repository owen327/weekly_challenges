class Robot
  @@names = []
  attr_accessor :name

  def initialize
    @name = reset
  end

  def reset
    self.name = 2.times.with_object('') { |_, str| str << rand(65..90).chr } +
                format('%03d', rand(1000))
    @@names.include?(name) ? reset : @@names << name
    name
  end
end
