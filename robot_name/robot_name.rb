class Robot
  @@names = []
  attr_accessor :name

  def initialize
    @name = reset
  end

  def reset
    self.name = ('AA'..'ZZ').to_a.sample + sprintf("%03d", rand(1))
    @@names.include?(name) ? reset : @@names << name
    name
  end
end
# @name = ('AA000'..'ZZ999').to_a.sample