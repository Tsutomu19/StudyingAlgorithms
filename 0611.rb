C079:カードを集める


何枚開けたときに全種類そろったかを出力してください。
ただし、全て開けても全種類そろわないときは、"unlucky" と出力してください。

6 3
1
2
2
3
1
3


input = gets.split(" ").map(&:to_i)
buy_card = input[0]
syurui = input[1]
open_cards = (1..buy_card).map{gets.chomp}.map(&:to_i)
open_cards.

何番目に初めて重複しなくなったかをみたい
puts "unlucky"

# [1, 2, 2, 3, 1, 3]



重複しない　＝＞　全種類
重複するまで繰り返す










input = gets.split(" ").map(&:to_i)
buy_card = input[0]
syurui = input[1]
p gets.chomp

open_cards = (1..buy_card).map{gets.chomp}.map(&:to_i)
何番目に重複しなくなったかをみたい
puts "unlucky"


while i <= buy_card
取得しながら
何回getsしなさい
end


重複消す
初めて重複の時になったら


```ruby
input = gets.split(" ").map(&:to_i)
buy_card = input[0]
syurui = input[1]
arr = []
i = 0
while i <= buy_card do
    arr << gets.chomp.to_i
    arr.uniq
    i =+ 1
    if arr.count == syurui
        break
    end

end
p i
```


何パック開けてコレクションが全部揃ったか
重複を消していく

種類


input = gets.split(" ").map(&:to_i)
buy_card = input[0]
syurui = input[1]
arr = []
i = 0
while i <= buy_card do
    
    arr << gets.chomp.to_i
    arr.uniq!
    i += 1
    if arr.count == syurui
        break
    end
end

puts "unlucky"





if arrp i

    アンラッキーが出る時てどんな時？

end



```ruby

input = gets.split(" ").map(&:to_i)
buy_card = input[0]
syurui = input[1]
arr = []
i = 0
while i <= buy_card do
    
    arr << gets.chomp.to_i
    arr.uniq!
    i += 1
    if arr.count == syurui
        p i
        break
    end
end
if arr.count != syurui
puts "unlucky"
```



どうすれば楽に溶ける？？
問題復習しよう













yuki

data = gets.split(" ").map(&:to_i)
pack_count = data[0]

arr = []
count = 0
pack_count.times do
   arr.push(gets.chomp.to_i).uniq!
   count += 1
   return p count if arr.size == data[1]
end

puts "unlucky"


returnやると処理止まる
後ろに出てきてほしくないものがあるとき使う





C069:お祭りの日付
元に戻された文字列を出力してください。
出力



2000 12 10
1 10


date = gets.split(" ").map(&:to_i)
year = date[0]
month = date[1]
day = date[2]

input = gets.split(" ").map(&:to_i)
next_month = input[0]
next_day = input[1]

years = (1..10000).to_a
years.each do|y|
    p y % 4 == 1
end


4でわってあまりが1になる年に開催
次のパイーざ祭までの日数を計算。

yeas = (1..10000).to_a
p years% 4 == 1