yen = gets.split(" ").map(&:to_i)
p yen[0] * yen[1]



D081:【キャンペーン問題】家族で分ける


family_num = gets.to_i
input = gets.split(" ").map(&:to_i)

height,width = input[0],input[1]
if (height * widht) % family_num == 0
    puts "1"
else
    p (height * widht) % family_num
end


# 綴り間違い修正


family_num = gets.to_i
input = gets.split(" ").map(&:to_i)

height,width = input[0],input[1]
if height * width % family_num == 0
    puts "0"
else
    p height * width % family_num
end



# 三項演算子に書き換え

family_num = gets.to_i
input = gets.split(" ").map(&:to_i)

height,width = input[0],input[1]
p height * width % family_num == 0 ? 0 : height * width % family_num