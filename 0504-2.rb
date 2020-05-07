@count = 1
def prime(n)
    num = 2
    count = 1
    c do
        while n > num do
            if (n % num)　== 0
                throw :break_loop
            end
            num += 1
        end
        puts "#{n}は。。。#{@count}番目の素数です"
        @count += 1
    end
end

def loop1
    2.step do |i|
        prime(i)
    end
end

def prime2(n. t)
    num = 2
    count = 1
    catch(:break_loop) do
        while n > num do
            if (n % num) == 0
                throw :break_loop
            end
            num += 1
        end
        if t == @count
            puts "#{@count}"番目
        end
    end
end