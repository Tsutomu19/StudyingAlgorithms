# C019:完全数とほぼ完全数
# D133:株の利益
# C030:白にするか黒にするか
# C015:ポイントカードの計算
# D113:初日の出　復習

# 入力されたデータの取得方法を取得









# C019:完全数とほぼ完全数

# 3
# 28
# 16
# 777



numbers = (1..gets.to_i).map{gets.to_i}
# [28, 16, 777]

def divide(num)
    result = []
    i = 1
    while i <= num do
        remainder = num % 1
        if remainder == 0
            result << i
        end
        i += 1
    end
    return result
end



def judge(number)
    divisors =[]
    divisors = divide(number)
    # 結果が入ってる
    if divisors.sum - number == number
        puts "perfect"
    elsif (divisors.sum - number).abs == number -1
        puts "nearly"
    else
        puts "neither"
    end
end
# 一つずつに対して
numbers.each do |number|
    judge(number)
end



# D133:株の利益

# あなたは、X 円の資金を元に株式投資を始めようと思っています。
# 株価の上昇が見込めそうな銘柄を見つけたので、全財産を投じ買えるだけ買って株価が上がったら売ろうと考えました。

# 上昇前の株価 A 円と上昇後の株価 B 円が与えられるので、いくら利益を上げることができたか計算してください。
# ただし、株は 1 単位ごとにしか購入できないことに注意してください。

# 例えば入力例 1 の場合

# 100 円分の株を 2 円で購入し 5 円で売却します。

# 50 単位の株を 2 円で手に入れ、 5 円で 50 単位の株を売るので 250 円 となります。
# このとき利益は 50 単位の株 × 5 円 引く 50 単位の株 × 2 円となります。

100
2
5


price = gets.to_i
a,b = gets.to_i,gets.to_i,
p b

p (price / a)* b - (price / a)*a


















# C030:白にするか黒にするか
# 3 2
# 128 127
# 127 128
# 128 127




data = gets.chomp!.split(" ").map(&:to_i)
# [3, 2]
row = data[0]
line = data[1]
# [128, 127]

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
#   配列をそれぞれ数値として出力
  line.each do |l|
    puts l.join(" ")
  end

# 写経
#   def white_or_black(size)
#     if size < 128
#         return 0
#     elsif size >= 128
#         return 1
#     end
#   end

#   input_line = gets.chomp.split(" ").map(&:to_i)

#   line = (1..input_line[0]).map{ gets.chomp.split(" ").map(&:to_i)}
#   input_line[0].times do |height|
#     input_line[1].times do |weidth|
#         line[heigth][width] = white_or_black(line[heigth][width])
#     end
#   end

#   line.each do |ans|
#     puts ans.join(" ")
#   end




# C051:カード並べ
# 自分のかい
line = gets.split(' ').map(&:to_i)
a = line[0]
b = line[1]
c = line[2]
d = line[3]
answer = []

answer << (a * 10 + b) + (c * 10 + d)
answer << (a * 10 + b) + (d * 10 + c)
answer << (a * 10 + c) + (b * 10 + d)
answer << (a * 10 + c) + (d * 10 + b)

answer << (a * 10 + b) + (c * 10 + d)
answer << (a * 10 + b) + (d * 10 + c)
answer << (a * 10 + c) + (b * 10 + d)
answer << (a * 10 + c) + (d * 10 + b)

answer << (a * 10 + b) + (c * 10 + d)
answer << (a * 10 + b) + (d * 10 + c)
answer << (a * 10 + c) + (b * 10 + d)
answer << (a * 10 + c) + (d * 10 + b)



p answer.max



# yukiさん
data = gets.split(" ").map(&:to_i).permutation(4).to_a
arr = []
data.each do |one,two,three,four|
    arr << "#{one}""#{two}".to_i + "#{three}""#{four}".to_i
end
p arr.max




# C:022
# 5
# 11 14 16 10
# 12 15 17 10
# 13 11 14 11
# 12 10 13 8
# 11 13 14 10
number = gets.to_i
data = (1..number).map{gets.chomp.split(" ").map(&:to_i)}
p data[0][0]





# けんごさん

days = gets.to_i
data =  (1..days).map{ gets.chomp.split(" ").map(&:to_i) }
puts "#{data[0][0]} #{data[-1][1]} #{data.flatten.max} #{data.flatten.min}"



days = gets.to_i
data =  (1..days).map{ gets.chomp.split(" ").map(&:to_i) }

max_array = []
min_array = []

data.each do |d|
  max_array.push(d[2])
  min_array.push(d[3])
end

puts "#{data[0][0]} #{data[-1][1]} #{max_array.max} #{min_array.min}"




days = gets.to_i
data =  (1..days).map{ gets.chomp.split(" ").map(&:to_i) }

max = data[0][1]
min = data[0][2]

data.each do |d|
  if max < data[2]
    max = data[2]
  end

  if min > data[3]
    min = data[3]
  end
end

puts "#{data[0][0]} #{data[-1][1]} #{max} #{min}"


















# C041:メダルランキングの作成 23:30




country = gets.to_i
medal = (1..country).map{gets.chomp.split(" ").map(&:to_i)}

gold = []
silver = []
bronze = []

medal.each do |g|
    gold.push(g[0])
end
p gold.sort.reverse







# ゆうきさん
arr = (1..gets.to_i).map{gets.split(" ").map(&:to_i)}.sort{|x,y| y[2] <=> x[2]}.sort{|x,y| y[1] <=> x[1]}.sort{|x,y| y[1] <=> x[1]}.sort{|x,y| y[0] <=> x[0]}.each {|x| puts x.join(' ')}


# けんごさん
countries = gets.to_i
medals = (1..countries).map{ gets.chomp.split(" ").map(&:to_i)}.sort_by!{|x| [x[0],x[1],x[2]]}.reverse!.each{|gold,silver,bronze| puts "#{gold} #{silver} #{bronze}" }
