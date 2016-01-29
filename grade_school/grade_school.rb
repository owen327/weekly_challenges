class School
  def initialize
    @school = {}
  end

  def to_h
    @school.keys.sort.each_with_object({}) do |key, new_array|
      new_array[key] = grade(key)
    end
  end

  def add(name, grade)
    @school[grade].nil? ? @school[grade] = [name] : @school[grade] << name
  end

  def grade(specific_grade)
    @school.fetch(specific_grade) { [] } .sort
  end
end
