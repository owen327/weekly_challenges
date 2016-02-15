class Meetup
  def initialize(month, year)
    @range = (Date.new(year, month)...Date.new(year, month) >> 1).to_a
    @ref = { first: 0, second: 7, third: 14, fourth: 21, last: -7, teenth: 12 }
  end

  def day(weekday, schedule)
    @range[@ref[schedule]..31].find { |dy| dy.public_send("#{weekday}?") }
  end
end
