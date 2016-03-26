class Matrix
  attr_reader :rows, :columns

  def initialize(input)
    @rows = input.split("\n").map { |row| row.split.map(&:to_i) }
    @columns = @rows.transpose
  end

  def saddle_points
    max_row = rows.map.with_index { |row, index| { row.max => index } }
    min_column = columns.map(&:min)
    max_row.select { |row| min_column.include?(row.keys[0]) }
           .each_with_index.each_with_object([]) do |(saddle_point, index), results|
      results << []
      results[index] << saddle_point.values[0]
      results[index] << min_column.index(saddle_point.keys[0])
    end
  end
end
