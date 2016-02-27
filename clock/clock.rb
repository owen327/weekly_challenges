class Clock
  def initialize(hour, minute)
    @hour = hour
    @minute = minute
  end

  def self.at(hour, minute = 0)
    Clock.new(hour, minute)
  end

  def to_s
    format('%02d:%02d', @hour, @minute)
  end

  def +(other)
    @minute += other % 60
    @hour += other / 60
    @hour %= 24
    self
  end

  def -(other)
    self + -other
    self
  end

  def ==(other)
    to_s == other.to_s
  end
end
