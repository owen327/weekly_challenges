class School
  def initialize
    @roster = Hash.new { |roster, grade| roster[grade] = [] }
  end

  def to_h
    @roster.sort.to_h
  end

  def add(name, grade)
    @roster[grade].push(name).sort!
  end

  def grade(specific_grade)
    @roster[specific_grade]
  end
end
