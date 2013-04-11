class Fixnum
  alias number to_s
  def to_s
    if self%15 == 0
      "FizzBuzz"
    elsif self%3 == 0
      "Fizz"
    elsif self%5 == 0
      "Buzz"
    else
      number
    end
  end
end

puts [*1..100] 
