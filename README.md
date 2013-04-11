ryudai.rb_7

##どうしてこうなった
新入生の`@Momo060849`さんが参加するらしい→ じゃあプログラミングの楽しさ、rubyの楽しさについて発表してよ→ ＼(^o^)／

##ryudai.rbについて
プログラミング言語Rubyについてのコミュニティ的な何か。毎週木曜に勉強会してる。

##今日の内容
FizzBuzzかっこ良く書きたい。

http://d.hatena.ne.jp/keyword/Fizz%2DBuzz%CC%E4%C2%EA

##とりあえず普通に書くとこんな感じ?
``` Ruby
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
```
とか
``` Ruby
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
```
最初に数字をprintして"Fizz","Buzz"に該当すれば上書きしてみたり。


##Proc?
Procつかって書けないかと思った残骸

``` Ruby
def fizzbuzz_proc
  number = 0
  Proc.new do
    number += 1
    if(number%15)
    else number
    end
  end
end

fizzbuzz = fizzbuzz_proc

100.times do
  puts fizzbuzz.call
end
```

##オープンクラス

``` Ruby
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
```

あとは%(剰余演算子)を使わない方法とかがあるそうですが全然思い浮かばなかったので、先輩方教えてください、、、
