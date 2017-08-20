require 'pry'
class Sieve
  def initialize(num)
    @num = num
    @arr = 2.upto(@num).to_a
  end

  def primes
    @arr - is_not_prime?(@arr)
  end

  # private

  def is_not_prime?(arr)
    arr2 = []
    n = 0

    loop do
      arr2 << arr.keep_if do |i|
        i != arr[n] && i % arr[n] == 0
      end
      n += 1
      break if n >= arr.size
    end
    arr2
  end
end

p Sieve.new(10).primes
