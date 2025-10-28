class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
    
    delimiter = ','
    if numbers.start_with?('//')
      parts = numbers.split("\n", 2)
      delim_part = parts[0][2..-1]
      if delim_part.start_with?('[') && delim_part.end_with?(']')
        delimiter = delim_part[1..-2]
      else
        delimiter = delim_part
      end
      numbers = parts[1]
    end
    
    nums = numbers.split(/[,\n#{Regexp.escape(delimiter)}]/).map(&:to_i)
    negatives = nums.select(&:negative?)
    
    if negatives.any?
      raise ArgumentError, "negative numbers not allowed #{negatives.join(',')}"
    end
    
    nums.select { |n| n <= 1000 }.sum
  end
end

