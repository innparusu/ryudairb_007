1.upto(100) { |i|
  if (i%15 == 0)
    puts "FizzBuzz"
  elsif(i%3 == 0)
    puts "Fizz"
  elsif(i%5 == 0)
    puts "Buzz"
  else
    puts i
  end
}

1.upto(100) { |i|
  print "#{i}\r"
  if (i%3).zero?
    print "Fizz"
  end
  if (i%5).zero?
    print "Buzz"
  end
  print "\n"
}

