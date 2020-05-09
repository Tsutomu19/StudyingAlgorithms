# 二百万までの素数の和を求めなさい

# 初めて自力で理解しながら手を動かした。
# 次は、素数は何かというロジックを考えながら行う

require 'prime'

p Prime.each(20000).to_a.sum






# D問題
line = gets.to_i

p 100 + line*10

# サイコロ
num = gets.to_i
p (7 - num)

# 気温差
line = gets.split(' ').map(&:to_i)
p line[0]-line[1]

line = gets.split(' ').map(&:to_i) 
# 一行に複数、スペース消して、数字に


n = gets.split(' ').map(&:to_i)
m = gets.split(' ').map(&:to_i)
p n[0] * m[1] - n[1] * m[0]


s = gets.split(' ')
if s = "A"
    "A" = 4
end

p s


s = gets.split(' ')
s = gets.split('')
# 上記は意味が違う





# 回答
input_line = gets.split('')
arr = []
input_line.map do |one|
    if one == "A"
        arr.push("4")
        elsif one == "E"
        arr.push("3")
        elsif one == "G"
        arr.push("6")
        elsif one == "I"
        arr.push("1")
        elsif one == "O"
        arr.push("0")
        elsif one == "S"
        arr.push("5")
        elsif one == "Z"
        arr.push("2")
    else
        arr.push(one)
    end
end
puts arr.join



# 参考
input_line = gets.chomp!.split("")
arr = []
input_line.map do |one|
    # 一個ずつ見てるんだ！！！
  if one == "A"
      arr.push("4")
      elsif one == "E"
      arr.push("3")
      elsif one == "G"
      arr.push("6")
      elsif one == "I"
      arr.push("1")
      elsif one == "O"
      arr.push("0")
      elsif one == "S"
      arr.push("5")

    elsif one == "Z"
      arr.push("2")
  else
      arr.push(one)
  end

end
puts arr.join




# C013


n = gets.to_i
m = gets.to_i

rooms = []
until rooms.size == m
    rooms << gets.chomp.split(' ').map(&:to_i)
end

rooms.size.times do |i|
    i = gets.split('')
    if i == n  nがあったら
        p rooms　　
    else
        p　
    end
end




# 工事の初期値
kouji = gets.chomp!.split(' ').map(&:to_i)

# 木陰の数
n = gets.to_i

# 木陰のxとy
lines = []

# 木陰のxとyの配列数が木陰の数と同じになるまでloop
until lines.size == n
    lines << gets.chomp.split(' ').map(&:to_i)
end

# 木陰のxとyの回数分ループを繰り返し、silentかnoisyか判定する
lines.size.times do |i|
  if (lines[i][0] - kouji[0]) ** 2 + (lines[i][1] - kouji[1]) ** 2 >= kouji[2] ** 2
    puts "silent"
  else
    puts "noisy"
  end
end



分かりやす！！
22:25 けんご dislike_number = gets.chomp
rooms = gets.to_i
# 1..roomsの結果を配列に入れ、配列の中からrejectで判定がtrueのものを削除←ここが特に勉強になりました。
room_no = (1..rooms).map{ gets.chomp }.reject{ |room| room.include?(dislike_number) }

# 空の場合[]が返ってくる
if room_no.size >= 1
  puts room_no
else
  puts "none"
end






22:32 けんご dislike_number = gets.chomp
rooms = gets.to_i
# 1..roomsの結果を配列に入れ、配列の中からrejectで判定がtrueのものを削除
room_no = (1..rooms).map{ gets.chomp }.reject{ |room| room.include?(dislike_number) }

# 空の場合[]が返ってくる
puts room_no.size >= 1 ? room_no : "none"

# C072


lines = []
while line = gets
    lines << line.chomp.split(' ')
end
p lines




自分の解答
abi = gets.split(' ').map(&:to_i)
n = gets.to_i

name, atk, defe, spe = [],[],[],[]
count.times { lists << gets.chomp! }









# c071


hen = gets.split(' ').map(&:to_i)


hen = gets.chomp.split(" ").map(&:to_i)
m = hen[0]
n = hen[1]

teihen = (1..m).map{gets.chomp.split(" ").map(&:to_i)}
takasa = (1..n).map{gets.chomp.split(" ").map(&:to_i)}

kumi = 

mまでの数で           　nまでの数で
斜辺も整数になる三角形の個数をだす　ものを描きたい
**2 = 



00:02 けんご 

construction = gets.chomp.split(" ").map(&:to_i)
# 木陰の数
shades = gets.to_i
# 各要素の座標を配列に格納して数値化
coordinates = (1..shades).map{gets.chomp.split(" ").map(&:to_i)}
# それぞれの座標で判定
coordinates.each do |coord_x,coord_y|
  if (coord_x - construction[0]) ** 2 + (coord_y - construction[1]) ** 2 >= construction[2] ** 2
    puts "silent"
  else
    puts "noisy"
  end
end



解答
num = gets.split("").map(&:to_i)
m = num[0]
n = num[1]

bottom = (1..m-1).to_a