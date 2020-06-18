D143:制動距離の計算


# 以上の値が与えられるので、制動距離 L を求めるプログラムを作成してください。
# ただし、小数点以下は切り捨てて出力してください。


input = gets.split(" ").map(&:to_i)
mass,velocity,force = input[0],input[1],input[2]
length = (mass * velocity ** 2) / (2 * force)
p length.floor


D079:同じ文字
# 単純なパスワード入力を防ぐために手始めに 全ての文字が同じ パスワードであった場合は "NG" と出力し、それ以外は "OK" と出力してください。
# 出力最後に改行を 1 つ入れ、余計な文字、空行を含んではいけません


# 配列の要素の出現回数を知りたい。


string = gets.split(" ")
string.size - string.uniq.size == 0 ? puts "NG" : puts "OK"
# これだと重複しているモノの数がでる

# AAAAAA
# =>1



p string = gets.chomp.split("")

count = Hash.new(0)
string.each do |elem|
  count[elem] += 1
end
p count















string = gets.chomp.split("")

count = Hash.new(0)
string.each do |elem|
  count[elem] += 1
end


if string.size - count["A"] == 0 
    puts "NG"
else
    puts "OK"
end


string = gets.chomp.split("")
moji = string[0]
unless string.include?(moji)
    
end




if string.size - count["A"] == 0 
    puts "NG"
else
    puts "OK"
end


# 要素が全て同じ
# 全ての値が同一
# 重複が一つ



string = gets.chomp.split("")
string.uniq.count == 1 ? puts "NG" : puts "OK"



string = gets.chomp.split("")
if string.uniq.count == 1 
    puts "NG" 
else 
    puts "OK"
end



D037:花粉症でつらい

# あなたは花粉症でティッシュを毎日使っては買いに行くのを繰り返していましたが、必要なティッシュ箱の数を計算し一気に注文しようと考えました。

# ティッシュ1箱が空になるまでの期間を M 日、残りの花粉症の季節を N 日が改行区切りで入力されるので、花粉症の季節が終わるまでに必要なティッシュ箱の数を求めて下さい。

# 例えば、ティッシュ1箱が空になるまでの期間を 7 日、残りの花粉症の季節を 30 日とした時

box = gets.to_i
day = gets.to_i
p day.div(box) + 1



# 回答

box = gets.to_i
day = gets.to_i
need = day.divmod(box)
if need[1] == 0
    p need[0]
else
    p need[0] + 1
end




# 最終的な回答
box,day = gets.to_i,gets.to_i
need = day.divmod(box)
need[1] == 0 ? (p need[0]) : (p need[0] + 1)

# ()が必要なようだ





D112:工場の生産力

product,hour = gets.to_i,gets.to_i
p product * hour















D062:ひな祭り




num = gets.split(" ").map(&:to_i)
upper,middle,lower = num[0],num[1],num[2]
dolls = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J"]
puts dolls[0..upper - 1].join("")
puts dolls[upper..middle ].join("")
puts dolls[middle..lower - 1].join("")
# 一応通るけど




# 地続きのやつこれ使おう
row = gets.split(" ").map(&:to_i)
ningyou = ("A".."J").to_a
row.size.times {|i| puts ningyou.shift(row[i]).join }









puts 40 <= gets.to_i && gets.to_i <=60 ? "OK" : "NG"


# 範囲があるときはこれ
puts gets.to_i.between?(40,60) ? "OK":"NG"











B054:不思議な足し算

S_1 と S_2 を足し算した結果を PAIZA 表記で 1 行に出力してください。
出力の最後に改行を入れ、余計な文字、空行を含んではいけません。

・"A", "B", "C", "D", "E" のみからなる文字列である。
・0 以上の整数を表す。
・"A" が 0、"B" が 1、"C" が 2、"D" が 3、"E" が 4 を表す 5 進数である。
・0 以外の数字を表す際に、先頭に "A" が表記されることは許されていない。

初期
input = gets.split(" ")
aa = input[0].split("")
bb = input[1].split("")
aa.each do |a|
    if a == "A"

    end
end

# 3つのフェーズがある。これはわかっていた。それで10進数にするにはどうすればいいのか？？思考停止
# 進数変えるのめっちゃ便利だった
input = gets.split(" ").map{|i| i.split("")}

input.each do |paiza_num|
    paiza_num.map! do |pp|
        if pp == "A"
            pp = 0
        elsif pp == "B"
            pp = 1
        elsif pp == "C"
            pp = 2
        elsif pp == "D"
            pp = 3
        elsif pp == "E"
            pp = 4
        end
    end
end
# p data
# [[1, 4, 4], [2, 3]]
ten = input[0].join("").to_i(10) + input[1].join("").to_i(10)
# 5進数で3141だったら
# 3*125(5^3) + 1*25(5^2) + 4 * 5 
# 01234

ten.each do |tt|
    tt.map! do |t|
        if t == 0
            t = "A"
        elsif t == 1
            t = "B"
        elsif t == 2
            t = "C"
        elsif t == 3
            t = "D"
        elsif t == 4
            t = "E"
        end
    end
end
p ten



















def dec(i, 2)
    return nil if n < 2 or n > 10
    x = 0
    for j in 0..(i.length - 1)
      return nil unless (a = i[-(j + 1)]).between?("0", "9")
      return nil if (b = a.to_i) >= n
      x += (n ** j) * b
    end
    x
  rescue
    nil
  end
  
  p dec("203", 5)   #=>53



  input = gets.split(" ").map{|i| i.split("")}

input.each do |paiza_num|
    paiza_num.map! do |pp|
        if pp == "A"
            pp = 0
        elsif pp == "B"
            pp = 1
        elsif pp == "C"
            pp = 2
        elsif pp == "D"
            pp = 3
        elsif pp == "E"
            pp = 4
        end
    end
end

p ten = input.map{|a| a.join.to_i(5)}.sum.to_s(5)


# ten.each do |tt|
#     tt.map! do |t|
#         if t == 0
#             t = "A"
#         elsif t == 1
#             t = "B"
#         elsif t == 2
#             t = "C"
#         elsif t == 3
#             t = "D"
#         elsif t == 4
#             t = "E"
#         end
#     end
# end
# p ten





input = gets.split(" ").map{|i| i.split("")}

input.each do |paiza_num|
    paiza_num.map! do |pp|
        if pp == "A"
            pp = 0
        elsif pp == "B"
            pp = 1
        elsif pp == "C"
            pp = 2
        elsif pp == "D"
            pp = 3
        elsif pp == "E"
            pp = 4
        end
    end
end

p ten = input.map{|a| a.join.to_i(5)}.sum.to_s(5)


def change(tt)
    ten.each do |tt|
        tt.map! do |t|
            if t == 0
                t = "A"
            elsif t == 1
                t = "B"
            elsif t == 2
                t = "C"
            elsif t == 3
                t = "D"
            elsif t == 4
                t = "E"
            end
        end
    end
end

change(ten)





input = gets.split(" ").map{|i| i.split("")}

input.each do |paiza_num|
    paiza_num.map! do |pp|
        if pp == "A"
            pp = 0
        elsif pp == "B"
            pp = 1
        elsif pp == "C"
            pp = 2
        elsif pp == "D"
            pp = 3
        elsif pp == "E"
            pp = 4
        end
    end
end

ten = input.map{|a| a.join.to_i(5)}.sum.to_s(5)

def change(tt)
        tt.split("").map! do |t|
        if t == "0"
            t = "A"
        elsif t == "1"
            t = "B"
        elsif t == "2"
            t = "C"
        elsif t == "3"
            t = "D"
        elsif t == "4"
            t = "E"
        end
    end
end

puts change(ten).join("")







# yuki
# ・"A", "B", "C", "D", "E" のみからなる文字列である。
# ・0 以上の整数を表す。
# ・"A" が 0、"B" が 1、"C" が 2、"D" が 3、"E" が 4 を表す 5 進数である。
# ・0 以外の数字を表す際に、先頭に "A" が表記されることは許されていない。

data = gets.split(" ").map{|a| a.split("")}

data.each do |f|
    f.map! do |g|
        if g == "A"
            g = 0
        elsif g == "B"
            g = 1
        elsif g == "C"
            g = 2
        elsif g == "D"
            g = 3
        elsif g == "E"
            g = 4
        end
    end
end

def change_paiza(num)
        num.split("").map! do |g|
        if g == "0"
            g = "A"
        elsif g == "1"
            g = "B"
        elsif g == "2"
            g = "C"
        elsif g == "3"
            g = "D"
        elsif g == "4"
            g = "E"
        end
    end
end

puts change_paiza(data.map{|a| a.join.to_i(5) }.sum.to_s(5)).join










