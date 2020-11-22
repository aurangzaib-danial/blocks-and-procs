def mimic_select(array, &block)
  result = []
  array.each do |element|
    block_result = block.call(element)
    result << element if block_result
  end
  result
end

class Array
  def my_select(&block)
    result = []
    self.each do |element|
      block_result = block.call(element)
      result << element if block_result
    end
    result
  end
end
