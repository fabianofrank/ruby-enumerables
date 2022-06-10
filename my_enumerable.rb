module MyEnumerable
  def all?
    always_true = true
    each { |block_is_not_true| always_true = false unless yield block_is_not_true }
    always_true
  end

  def any?
    always_false = false
    each { |block_is_true| always_false = true if yield block_is_true }
    always_false
  end

  def filter
    always_array = []
    each { |block_is_true| always_array.push(block_is_true) if yield block_is_true }
    always_array
  end
end
