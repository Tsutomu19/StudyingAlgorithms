D032:充電時間
p (100 - gets.to_i)


D044:はじめまして
data = gets.chomp.split(" ")
puts data[1] == "F" ? "Hi, Ms. #{data[0]}" : "Hi, Mr. #{data[0]}"



D034:どれにしようかな
menu = gets.to_i
p 21 % menu == 0 ? menu : 21 % menu

文字数をメニュー数でわるのが勉強になった。
これ日常でも使えそう。