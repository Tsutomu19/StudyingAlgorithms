# C019:完全数とほぼ完全数
# D133:株の利益
# C030:白にするか黒にするか
# C015:ポイントカードの計算
# D113:初日の出　復習











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




input = gets.chomp.split(" ").map(&:to_i)
# [3, 2]
row = input[0]
line = input[1]
 wb_data = ()



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