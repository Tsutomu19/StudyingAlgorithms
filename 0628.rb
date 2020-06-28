# D142:【キャンペーン問題】イルミネーションの数

data = gets.split(" ").map(&:to_i)
p (data[0].to_f / data[1]).ceil * data[2]

# 小数点まで計算結果が欲しいときは
# .to_fを使う。ただし場所に注意。





# C019:完全数とほぼ完全数


def divisor(num)
    (1..num).select{ |i| num % i == 0 }
end

(1..gets.to_i).map{gets.chomp}.map(&:to_i)
.each do |h|
    integer = divisor(h)
    if h - ( integer.sum - h ) == 0
        puts "perfect"
    elsif h - ( integer.sum - h ) == 1
        puts "nearly"
    else
        puts "neither"
    end
end

# 15分くらいで
#   自力でできた。しかし汚い。