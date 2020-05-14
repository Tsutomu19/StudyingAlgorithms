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
