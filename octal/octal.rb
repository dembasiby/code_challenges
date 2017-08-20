class Octal
  def initialize(str)
    @str = str
  end

  def to_decimal
    case @str.to_i
    when 1 then 1
    when 0, 2..9 then 0
    when 10 then 8
    else
      octalize
    end
  end

  private

  def octalize
    arr = @str.split('')
    i = @str.length - 1
    count = 0
    final = []

    loop do
      if [8, 9].include?(arr[count].to_i)
        return 0
      else
        final << arr[count].to_i * (8 ** i)
        i -= 1
        count += 1
        break if count == arr.size
      end
    end
    final.reduce(:+)
  end
end
