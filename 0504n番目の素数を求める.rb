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


# 09:16 堀越 優希 

num = 2 #数字
divisor = 1 # 約数
divisorCount = 0 # 約数の個数
primeNumbers = [] # 素数たち

# 約数と約数の数を混ぜないように

while primeNumbers.length == 13 do

  while divisor < num do

    if num % divisor == 0
      divisor += 1
      divisorCount += 1
    end
    divisor += 1
    
  end

  num += 1

  if divisorCount == 2
    primeNumbers.push(num)
    divisorCount = 0
  end
end

# 09:16 堀越 優希

num = 2 #数字
divisor = 1 # 約数
divisorCount = 0 # 約数の個数
primeNumbers = [] # 素数たち

# 約数と約数の数を混ぜないように

until primeNumbers.length == 13 do

  until divisor < num do

    if num % divisor == 0
      divisor += 1
      divisorCount += 1
    end
    divisor += 1

  end

  num += 1

  if divisorCount == 2
    primeNumbers.push(num)
    divisorCount = 0
  end
end