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