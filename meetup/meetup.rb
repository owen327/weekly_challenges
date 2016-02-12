class Meetup
  def initialize(month, year)
    @range = Date.new(year, month)...Date.new(year, month) >> 1
  end

  def day(weekday, schedule)
    days = @range.select { |dy| dy.strftime('%A').downcase.to_sym == weekday }
    days[{ first: 0, second: 1, third: 2, fourth: 3, last: -1,
           teenth: (days.index { |dy| (13..19).include? dy.mday }) }[schedule]]
  end
end
