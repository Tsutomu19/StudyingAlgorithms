D002:数の比較
aとbを比較し大きい方の値を出力して下さい。aとbが同じ場合は「eq」と出力して下さい。

i = gets.split(" ").map(&:to_i)
a,b = i[0],i[1]
if a > b 
    p a 
elsif a == b
    puts "eq"
else
    p b
end