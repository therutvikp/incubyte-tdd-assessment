class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
    
    delimiters = [',', "\n"]
    if numbers.start_with?('//')
      parts = numbers.split("\n", 2)
      delim_part = parts[0][2..-1]
      
      if delim_part.start_with?('[')
        delimiters = delim_part.scan(/\[([^\]]+)\]/).flatten
        if delimiters.empty?
          delimiters = [delim_part]
        end
      else
        delimiters = [delim_part]
      end
      
      numbers = parts[1]
    end
    
    regex_pattern = /#{delimiters.map { |d| Regexp.escape(d) }.join('|')}/
    nums = numbers.split(regex_pattern).map(&:to_i)
    negatives = nums.select(&:negative?)
    
    if negatives.any?
      raise ArgumentError, "negative numbers not allowed #{negatives.join(',')}"
    end
    
    nums.select { |n| n <= 1000 }.sum
  end
end

