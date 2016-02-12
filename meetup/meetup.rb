class Meetup
  def initialize(month, year)
    @month_days = Date.new(year, month)...Date.new(year, month) >> 1
  end

  def day(weekday, schedule)
    return days_with(weekday)[{ first: 0, second: 1, third: 2, fourth: 3,
                                last: -1 }[schedule]] if schedule != :teenth
    days_with(weekday).select { |dy| (13..19).include?(dy.mday) }[0]
  end

  private

  def days_with(weekday)
    @month_days.select { |dy| dy.strftime('%A').downcase.to_sym == weekday }
  end
end
