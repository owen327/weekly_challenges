module RunLengthEncoding
  def self.encode(input)
    input.gsub(/(.)\1{1,}/) { |match| match.size.to_s + match.to_s.squeeze }
  end

  def self.decode(input)
    input.gsub(/\d+\D/) { |match| match[-1] * match.to_i }
  end
end
