
lines = []
while line = gets
    lines << line.chomp.split(' ').map(&:to_i)
end
x1 = lines[0][0]
y1 = lines[0][1]
price1 = lines[0][2]

x2 = lines[1][0]
y2 = lines[1][1]
price2 = lines[1][2]


# 循環小数理解
if price1 / (x1 * y1).to_f < price2 / (x2 * y2).to_f
        puts lines[0].join(" ")
    elsif price1 / (x1 * y1).to_f > price2 / (x2 * y2).to_f
        puts lines[1].join(" ")

    elsif price1 / (x1 * y1).to_f == price2 / (x2 * y2).to_f
        puts "DRAW"
end






# D113

# あなたは初日の出を見るために早く起きる計画を立てています。

# しっかりと寝て初日の出に備えたいあなたは 8 時間寝ることに決めました。
# 初日の出を見るために出発する時間が与えられるので寝る時間を出力して下さい。

# 入力例 1 では 5時25分が以下のように与えられるので

# 5:25
# 以下のように出力して下さい

# 21:25
# 評価ポイント
# 10回のテストケースで、正答率、実行速度、メモリ消費量をはかり得点が決まります。
# より早い回答時間で提出したほうが得点が高くなります。
# 複数のテストケースで正しい出力がされるか評価（+50点）
# 解答までの速さ評価（+50点）
# 入力される値
# 入力は以下のフォーマットで与えられます。

# h:m

# ・初日の出に出発する時間が h 時、 m 分とし「:」区切りで 1 行で与えられます。 h と m はゼロ埋めではない点に注意してください。
# ・末尾に改行が 1 つ入ります。


# それぞれの値は文字列で標準入力から渡されます。標準入力からの値取得方法はこちらをご確認ください
# 期待する出力
# 初日の出を見るために出発する時間が与えられるので 8 時間睡眠をするために寝始める時間を出力して下さい。

# 出力は以下のフォーマットで出力して下さい。 h と m はゼロ埋めではない点に注意してください。

# h:m

# 末尾に改行を入れ、余計な文字、空行を含んではいけません。








# yuki昨日 21:25
hour = gets.chomp!.split(":").map(&:to_i)

if hour[0] <= 7
    hour[0] = hour[0] + 16
    elsif hour == 8
    hour[0] = 0
    elsif hour[0] >= 9
    hour[0] = hour[0] - 8
end

puts "#{hour[0]}:#{hour[1]}"




# kengo昨日 21:25
input_line = gets.chomp.split(":").map(&:to_i)
time = (input_line[0] - 8) % 24

puts "#{time}:#{input_line[1]}"








# C015:ポイントカードの計算

number = gets.to_i
(1..number).map{ gets.chomp.split(" ") }
.each do |day,price|
    if day == 1 を含む
        p price 
    elsif day == 3
        p price * 0.03
    elsif day == 5
    p price * 0.05
    end
end
たす










# ゆうきさん
data = (1..gets.to_i).map{gets.chomp.split(" ").map(&:to_i)}

answer = []
data.each do |day, point|
    if day.to_s.split("").include?("5")
        answer << (point * 0.05).to_i
    elsif day.to_s.split("").include?("3")
        answer << (point * 0.03).to_i
    else
        answer << (point * 0.01).to_i
    end
end
p answer.sum
x == 15,16
x == 14|12















# けんごさん
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





item = gets.to_i
data = (1..item).map{gets.chomp.split(" ").map(&:to_i)}
answer = []
data.each do |type, price|
    if type.to_i == 0
        answer << (price / 100 * 5).to_i
    elsif type.to_i == 1
        answer << (price / 100 *3).to_i
    elsif type.to_i == 2
        answer << (price / 100 * 2).to_i
    else
        answer << (price / 100 * 1).to_i
    end
end
p answer.sum




# B045:計算ドリル




data = gets.split(" ").map(&:to_i)
plus_count = data[0]
minus_count = data[1]

plus_number_first = []
plus_number_last = []
# 足し算を作る
(1..plus_count).map do |num|
    plus_number_first << rand(0..99)
    plus_number_last<< rand(0..99)
end

plus_number_first.zip(plus_number_last) do |first,last|
    puts "#{first} + #{last} ="
end

minus_number_first = []
minus_number_last = []
# 引き算を作る
(1..minus_count).map do |num|
    minus_number_first << rand(0..99)
    minus_number_last<< rand(0..99)
end

minus_number_first.zip(minus_number_last) do |first,last|
    if first >= last
        puts "#{first} - #{last} ="
    else
    end
end

# 重複をさせない
# 引き算の場合は、firstの方が大きくなる
# 指定された数作るメソッドが必要

data = gets.split(" ").map(&:to_i)
plus_count = data[0]
minus_count = data[1]

plus_number_first = []
plus_number_last = []
# 足し算を作る
(1..plus_count).map do |num|
   a = rand(0..99)
   b = rand(0..99)
   if a + b <= 100 && ! plus_number_first.include?(a) && ! plus_number_last.include?(b)
       plus_number_first << a
       plus_number_last << b
   else
       redo
   end
end








# ゆうきさん2
plus_number_first.zip(plus_number_last) do |first,last|
    puts "#{first} + #{last} ="
end

minus_number_first = []
minus_number_last = []
# 引き算を作る
(1..minus_count).map do |num|
   a = rand(0..99)
   b = rand(0..99)
   #同じ数の組み合わせがなかったら...
   if a >= b && ! minus_number_first.include?(a) && ! minus_number_last.include?(b)
       minus_number_first << a
       minus_number_last << b
   else
       redo
   end
end

minus_number_first.zip(minus_number_last) do |first,last|
    puts "#{first} - #{last} ="
end

















# 勤
```
input = gets.split(' ').map(&:to_i)
add = input[0]
diff = input[1]

arr = (0..99).to_a
a = []
b = []
(1..add).map do |num|
    a = arr.sample
    b = arr.sample
    puts "#{a} + #{b} ="
end
```ruby