class Robot
  @@names = []

  def name
    @name ? @name : reset
  end

  def reset
    @name = ('AA'..'ZZ').to_a.sample + ('000'..'999').to_a.sample
    @@names.include?(@name) ? reset : @@names << @name
    @name
  end
end
