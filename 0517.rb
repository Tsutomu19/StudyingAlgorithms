# C054:【ぱいじょ！コラボ問題】スピード違反
# N V
# t_1 p_1
# t_2 p_2
# ...
# t_N p_N


input = gets.split(" ").map(&:to_i)

n = input[0]
v = data[1]

data =  (1..n).map{ gets.chomp.split(" ").map(&:to_i) }


data.each do |t, p|
    if p > v
        puts 'YES'
    else
        puts 'NO'
    end
end


# yuki
point_data = gets.split(" ").map(&:to_i)
point,limit = point_data[0],point_data[1]

data = (1..point).map{gets.split(" ").map(&:to_i)}.sort{|a,b| a[0] <=> b[0]}

i = 0
until i == point -1
    if (data[i+1][1] - data[i][1] ) / (data[i+1][0] - data[i][0]) > limit
        puts "YES"
        return
    end
    i += 1
end

puts "NO"














country = 'italy'
message =
case country
when 'japan'
    'こんにちは'
when 'us'
    'Hello'
when 'italy'
    'ciao'
else
    '???'
end
message　








気温が 25 ℃以上の日、もしくは湿度が 40 % 以下の日は干します
気温が 25 ℃以上かつ、湿度 40 % 以下の日は砂ぼこりが舞うので干しません。

D071:洗濯物と砂ぼこり（想




input = gets.split(" ").map(&:to_i)
t,m = input[0],input[1]

if t >= 25 && m <= 40
        puts "No"
elsif t >=  25 || m < 40
    puts "Yes"
else
    puts "No"

end





# C039:古代の数式

data = gets.split("+").map(&:to_s)

data.each do |d|
    if d.include?("/")
end





arr = gets.chomp.split("+")

answer = []
arr.each do |f|
    ten = f.count("<")
    one = f.count("/")
    number = 10 * ten + one
    answer << number
end
p answer.sum












# D082:2つの単語


# 以下のルールを満たす時は "OK" そうでない場合は "NG" と出力するプログラムを作成してください。

# ・A の最後の 1 文字が B の最初の 1 文字と一致している。
# ・B の最後の 1 文字が "n" ではない。


line = readlines.map(&:chomp)
a,b = line[0],line[1]
a_array = a.split('')
b_array = b.split('')
if a_array.last = b_array.first && a_array.last != n && b_array.last != n
    puts "OK"
else
    puts "NG"
end


line = readlines.map(&:chomp)
a,b = line[0],line[1]
a_array = a.split('')
b_array = b.split('')
if a_array.last == b_array.first && a_array.last != n && b_array.last != n
    puts "OK"
else
    puts "NG"
end


one,two = gets.chomp,gets.chomp
puts one[-1] != "n" && two[-1] != "n" && one[-1] == two[0] ? "OK" : "NG"


.select{|answer| answer.include?(input)}




N = (1..gets.to_i).to_a
N.each |nn|
    if nn % 15 == 0
        puts 'Fizz Buzz'
    elsif nn % 3 == 0
        puts 'Fizz'
    elsif nn % 5 == 0
        puts 'Buzz'
    else
        puts nn
    end
end





N = (1..gets.to_i).to_a
N.each do |nn|
    if nn % 15 == 0
        puts 'Fizz Buzz'
    elsif nn % 3 == 0
        puts 'Fizz'
    elsif nn % 5 == 0
        puts 'Buzz'
    else
        puts nn
    end
end



N = (1..gets.to_i).to_a
.each do |n|
    if n % 15 == 0
        puts 'Fizz Buzz'
    elsif n % 3 == 0
        puts 'Fizz'
    elsif n % 5 == 0
        puts 'Buzz'
    else
        puts n
    end
end












# Fizz Buzz (paizaランク C 相当)

n = gets.to_i

N = (1..n).to_a
N.each do |nn|
    if nn % 15 == 0
        puts 'Fizz Buzz'
    elsif nn % 3 == 0
        puts 'Fizz'
    elsif nn % 5 == 0
        puts 'Buzz'
    else
        puts nn
    end
end