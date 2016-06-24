module RunLengthEncoding
  def self.encode(input)
    input.gsub(/(.)\1{1,}/) { |match| match.size.to_s + match.to_s.squeeze }
  end

  def self.decode(input)
    input.gsub(/\d+\D{1}|\D{1}/) do |match|
      if match.to_i != 0
        match[-1] * match.to_i
      else
        match
      end
    end
  end
end
