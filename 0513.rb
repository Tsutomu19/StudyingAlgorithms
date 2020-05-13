
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



