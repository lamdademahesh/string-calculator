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

    negatives = numbers.select{|num| num < 0 }
    raise "Negative numbers not allowed: #{negatives.join(', ')}" if negatives.any?
    
    numbers.sum
  end
end
