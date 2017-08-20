class Sieve
  def initialize(num)
    @num = num
  end

  def primes
    arr = 2.upto(@num).to_a
    n = 0

    loop do
      arr.delete_if do |i|
        i != arr[n] && i % arr[n] == 0
      end
      n += 1
      break if n >= arr.size
    end
    arr
  end
end
