class Trinary

  def initialize(num_str)
    @arr = num_str.split('')
  end

  def to_decimal
    i = @arr.length - 1
    result = 0

    @arr.each_with_index do |n, idx|
      return 0 if n =~ /[^012]/
      result += @arr[idx].to_i * (3 ** i)
      i -= 1
    end

    result
  end
end
