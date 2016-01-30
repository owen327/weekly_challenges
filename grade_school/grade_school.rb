class School
  def initialize
    @school = Hash.new { |hash, key| hash[key] = [] }
  end

  def to_h
    @school.sort.to_h
  end

  def add(name, grade)
    @school[grade].push(name).sort!
  end

  def grade(specific_grade)
    @school[specific_grade]
  end
end
