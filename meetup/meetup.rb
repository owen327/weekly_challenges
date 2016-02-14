class Meetup
  MARKER = { first: 1, second: 8, third: 15, fourth: 22, last: -7, teenth: 13 }

  def initialize(month, year)
    @range = MARKER.map do |sch, num|
      [sch, Date.new(year, month, num)..Date.new(year, month, num + 6)]
    end.to_h
  end

  def day(weekday, schedule)
    @range[schedule].find { |dy| dy.strftime('%A').downcase.to_sym == weekday }
  end
end
