class Meetup
  INDEX = { first: 0, second: 1, third: 2, fourth: 3, last: -1 }

  def initialize(month, year)
    @range = Date.new(year, month)...Date.new(year, month) >> 1
  end

  def day(weekday, schedule)
    days = @range.select { |dy| dy.strftime('%A').downcase.to_sym == weekday }
    return days[INDEX[schedule]] if schedule != :teenth
    days.select { |dy| (13..19).include? dy.mday }[0]
  end
end
