module PerfectNumber
  def self.classify(input)
    raise RuntimeError if input < 0
    aliquot_sum = (1..(input / 2)).select { |num| input % num == 0 }.reduce(:+)
    %w(perfect abundant deficient)[aliquot_sum <=> input]
  end
end
