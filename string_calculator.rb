class StringCalculator
  def self.add(input)
    # Setting default delimiter
    delimiter = ','

    input.gsub!("\n", delimiter)
    numbers = input.split(delimiter).map(&:to_i)
    numbers.sum
  end
end
