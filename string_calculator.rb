class StringCalculator
  def self.add(input)
    # Setting default delimiter
    delimiter = ','

    # Check if there is a custom delimiter passed within the string
    # if yes : 
    # - update the delimiter. 
    # - update the input value 
    if input.start_with?("//")
      delimiter = input[2]
      input = input[(input.index("\n") + 1)..-1]
    end

    # Remove the newline character & replace it with the current delimiter
    input.gsub!("\n", delimiter)
    numbers = input.split(delimiter).map(&:to_i)

    # check if the parsed input has any negative numbers
    # If there are any, raise an error 
    negatives = numbers.select{|num| num < 0 }
    raise "Negative numbers not allowed: #{negatives.join(', ')}" if negatives.any?
    # Return the sum of parsed input
    numbers.sum
  end
end
