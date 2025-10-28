class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
    
    delimiter = ','
    if numbers.start_with?('//')
      parts = numbers.split("\n", 2)
      delimiter = parts[0][2..-1]
      numbers = parts[1]
    end
    
    nums = numbers.split(/[,\n#{Regexp.escape(delimiter)}]/).map(&:to_i)
    negatives = nums.select(&:negative?)
    
    if negatives.any?
      raise ArgumentError, "negative numbers not allowed #{negatives.join(',')}"
    end
    
    nums.sum
  end
end

