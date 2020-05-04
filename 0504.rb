@count = 1

def prime(n)
  num = 2
  count = 1
  catch(:break_loop) do
    while n > num do
      if (n % num) == 0
        # puts "#{n} は素数ではありません。"
        throw :break_loop
      end
      num += 1
    end
      puts "#{n} は...  #{@count}番目の素数です"
      @count += 1
  end
end

def loop1
  2.step do |i|
    prime(i)
    # break if i == 100
  end
end



def prime2(n, t)
  num = 2
  count = 1
  catch(:break_loop) do
    while n > num do
      if (n % num) == 0
        # puts "#{n} は素数ではありません。"
        throw :break_loop
      end
      num += 1
    end
      if t == @count 
        puts "#{@count}番目の素数は... #{n} です！"
      end
      @count += 1
  end
end

def loop2(target)
  2.step do |i|
    prime2(i, target)
    break if @count == target + 1
  end
end

p "終わりなき素数の旅にでる　→　1　　　n番目の素数を探す →　2"
imput = gets.to_i 
if imput == 1
  loop1
elsif imput == 2
  p "何番目の素数を探しますか？　数字を入力してください"
  a = gets.to_i
  loop2(a)
else
  p "「1」か「2」を入力してください"
end
