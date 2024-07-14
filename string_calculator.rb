class StringCalculator
  def self.add(input)
    # Setting default delimiter
    delimiter = ','

    if input.start_with?("//")
      delimiter = input[2]
      input = input[(input.index("\n") + 1)..-1]
    end

    input.gsub!("\n", delimiter)
    numbers = input.split(delimiter).map(&:to_i)
    numbers.sum
  end
end
