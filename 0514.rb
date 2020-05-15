# D113:初日の出　復習

input_line = gets.chomp.split(":").map(&:to_i)
# [5, 25]
minute = input_line[1]
hour = (input_line[0] - 8) % 24
puts "#{hour}:#{minute}"



# C015:ポイントカードの計算

# 自力
# 自力
number = gets.to_i
point = []
(1..number).map(&:to_i)
.each do |day,price|
    if day.include?(3)
        point << point = (price.to_i * 0.03).to_f
    elsif day.include?(5)
        point << point = (price.to_i * 0.05).to_f
    else
        point << point = (price.to_i * 0.03).to_f
    end
end
p point.sum




# 自力　解答見て修正　答えはok
number = gets.to_i
point = []
data = (1..number).map{gets.chomp.split(" ").map(&:to_i)}
# 3
# 1 1024
# 11 2048
# 21 4196

# 入力が上記だから
# 配列　内　配列にする
# [[1, 1024], [11, 2048], [21, 4196]]

data.each do |day,price|
    if day.to_s.split("").include?("3")
        point << (price * 0.03).to_i
    elsif day.to_s.split("").include?("5")
        point << (price * 0.05).to_i
    else
        point << (price * 0.03).to_i
    end
end
p point.sum


# 文字にバラして文字列の3があるか確認している
# 計算結果を配列に入れている　書き方注意

















# けんごさん読むだけにしている。最終的にはこれでかけるよに練習
receit = gets.to_i
answer = 0

def point(date,price)
  add_point = 0
  if date.to_s.include?("3")
    add_point = (price * 0.03).floor
  elsif date.to_s.include?("5")
    add_point = (price * 0.05).floor
  else
    add_point = (price * 0.01).floor
  end

  add_point
end

(1..receit).map{ gets.chomp.split(" ").map(&:to_i) }.each{ |date,price| answer += point(date,price) }

puts answer




# C030:白にするか黒にするか



line = gets.split(' ').map(&:to_i)
h = line[0]
w = line[1]

p h
p w
point = []
data = (1..number).map{gets.chomp.split(" ").map(&:to_i)}

p data






data = gets.chomp!.split(" ").map(&:to_i)
row = data[0]
line = data[1]

wb_data = gets.chomp!.split(" ").map(&:to_i)

line_data = (1..line).map{wb_data}

line_data.each do |f|
    p f
     f.map!{|x| x >= 128 ? 1 : x}
     p f
     f.map!{|x| x <= 127 ? 0 : x}
     p f
end



# kengo
def white_or_black(size)
    if size < 128
      return 0
    elsif size >= 128
      return 1
    end
  end
  
  input_line = gets.chomp.split(" ").map(&:to_i)
  
  line = (1..input_line[0]).map{ gets.chomp.split(" ").map(&:to_i)}
  
  input_line[0].times do |height|
    input_line[1].times do |width|
      line[height][width] = white_or_black(line[height][width])
    end
  end
  
  line.each do |l|
    puts l.join(" ")
  end








#   D133:株の利益
# あなたは、X 円の資金を元に株式投資を始めようと思っています。
# 株価の上昇が見込めそうな銘柄を見つけたので、全財産を投じ買えるだけ買って株価が上がったら売ろうと考えました。

# 上昇前の株価 A 円と上昇後の株価 B 円が与えられるので、いくら利益を上げることができたか計算してください。
# ただし、株は 1 単位ごとにしか購入できないことに注意してください。

# 例えば入力例 1 の場合

# 100 円分の株を 2 円で購入し 5 円で売却します。

# 50 単位の株を 2 円で手に入れ、 5 円で 50 単位の株を売るので 250 円 となります。
# このとき利益は 50 単位の株 × 5 円 引く 50 単位の株 × 2 円となります。



# kengo今日 22:50
money = gets.to_i
before = gets.to_i
after = gets.to_i

kabu = (money / before).floor
plus = after - before

p kabu * plus



# yuki今日 22:50
a,b,c = gets.to_i,gets.to_i,gets.to_i
#  50 単位の株 × 5 円 引く 50 単位の株 × 2 円となります
p a/b*c - a/b * b




# 本来はこれ
a/b*c - a



# C019:完全数とほぼ完全数



number = (1..gets.to_i).map(&: to_i)
data = (1..number).gets.chomp.split(" ").map(&:to_i)}
re_data = (1..number).map{data}
p re_data

input = gets.to_i
number = (1..gets.to_i).map(&: to_i)
num = number[?]

def divisor(num)
    result = []
    i = 1
    while i <= num do
      remainder = num % i
      if remainder == 0
        result << i
      end
      i += 1
    end
    result
  end
  re = divisor(num)
  puts re.sum

  puts "約数を算出したい整数を入力してください"
  num = gets.to_i
  r = divisor(num)
  puts r

  puts r.sum

