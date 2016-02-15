class Meetup
  def initialize(month, year)
    @range = (Date.new(year, month)...Date.new(year, month) >> 1).to_a
  end

  def day(weekday, schedule)
    ref = { first: 0, second: 7, third: 14, fourth: 21, last: -7, teenth: 12 }
    @range.find do |dy|
      dy.strftime('%A').downcase.to_sym == weekday &&
        @range[ref[schedule]..(ref[schedule] + 6)].include?(dy)
    end
  end
end
