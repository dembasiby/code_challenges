require 'pry'
class Trinary

  def initialize(num)
    @num = num
  end

  def to_decimal
    calculate_decimal
  end

  def calculate_decimal
    arr = @num.split('')
    i = @num.length - 1
    count = 0
    decimal = []

    arr.each do |n|
      loop do
        decimal << arr[count].to_i * (3 ** i)
        count += 1
        i -= 1
        break if i < 0
      end
    end
    decimal.reduce(:+)
  end
end
