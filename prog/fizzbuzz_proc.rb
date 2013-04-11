def fizzbuzz_proc
  number = 0
  Proc.new do
    number += 1
    if(number%15).zero?
      "FizzBuzz"
    elsif(number%3).zero?
      "Fizz"
    elsif(number%5).zero?
      "Buzz"
    else 
      number
    end
  end
end

fizzbuzz = fizzbuzz_proc

100.times do
  puts fizzbuzz.call
end
