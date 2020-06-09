1 qwertyuiopasdfghjklzxcvbnm
hqomq gfsoft iqeaqzigf


・1行目に置換回数 n と 小文字アルファベットの置換を表す文字列 T がスペース区切りで与えられます。 置換は英字 a, b, ..., z の i 文字目 (1 ≦ i ≦ 26) を T の i 文字目に置き換える形で行います。
・2行目に置換された文字列 S が一行で与えられます。
・入力は合計 2 行であり、 最終行の末尾に改行が1つ入ります。

pしたもの
1
"qwertyuiopasdfghjklzxcvbnm"
["hqomq", "gfsoft", "iqeaqzigf"]




input = gets.split(" ")
kaisuu = input[0].to_i
tikann = input[1].split("")
angou = gets.split(" ")

alphabets = ('a'..'z').to_a
暗号文のもじを一つづつ置換の中から見つけてくる

new_word = String.new
answer = []

tikann.each do |word|
    word.split("").each do |change|
        new_index = word_data.index(change)
        new_word += alphabets[new_index]
    end
    answer << new_word
    new_word = String.new
    answer << " "
end

puts answer.reverse.drop(1).reverse.join


数字
word =""
とString.newは同義