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



# C024:ミニ・コンピュータ
# 14:25-:44


3
SET 1 10
SET 2 20
ADD 40



data = (1..gets.to_i).map{gets.chomp.split(" ")}
data_A,data_B = 0,0
# 1だったらdata_aに数字をセットしたい。
data.each do |f,g,h|
    if f == "SET"
        if g == "1"
            data_A = h.to_i
        else
            data_B = h.to_i
        end
    elsif f == "ADD"
        data_B = data_A + g.to_i
    else
        data_B = data_A - g.to_i
    end
end
puts "#{data_A} #{data_B}"
# 問題文を読む力