class School
  def initialize
    @school = {}
  end

  def to_h
    @school.sort.to_h
  end

  def add(name, grade)
    @school[grade].nil? ? @school[grade] = [name] : @school[grade] = @school[grade].push(name).sort
  end

  def grade(specific_grade)
    @school.fetch(specific_grade, [])
  end
end
