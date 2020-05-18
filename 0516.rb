
# C051:カード並べ
# D150:【30万人記念問題】達成の確認
# C:022
# C041:メダルランキングの作成 23:30



data = gets.split(" ").map(&:to_i).permutation(4).to_a
arr = []
data.each do |one,two,three,four|
    arr << "#{one}""#{two}".to_i + "#{three}""#{four}".to_i
end
p arr.max








x, y = gets.to_i, gets.to_i
puts x >= y ? "Thank you" : y - x



# C:022　ローソク足
# 変化し続ける株価の様子を知るために、始値、終値、高値、安値と呼ばれる 4 種類の株価がしばしば用いられます。

# 1 日間の 4 種類の株価はそれぞれ次のように定められます。

# ・始値は 1 日の最初の株価
# ・終値は 1 日の最後の株価
# ・高値は 1 日の最大の株価
# ・安値は 1 日の最小の株価

# さらに、n 日間の 4 種類の株価はそれぞれ次のように定められます。

# ・始値は 1 日目の始値
# ・終値は n 日目の終値
# ・高値は 1 日目から n 日目までの最大の高値
# ・安値は 1 日目から n 日目までの最小の安値


# kenngosan
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
data = (1..days).map{( gets.chomp.split(" ").map(&:to_i)}
puts "#{data[0][0]} #{data[-1][1]}　#{data.flatten.max} #{data.flatten.min}"
# 配列の最後を-1でとってるるんだ。すご。感動。これならnこでも対応できるじゃん。
# flatten。。。配列内配列をフラット化して、その中からmax,minを取り出してきている。
# 多次元配列を一次元にしてる

# flatten は自身を再帰的に平坦化した配列を生成して返します。
# flatten! は自身を再帰的かつ破壊的に平坦化し、平坦化が行われた場合は self をそうでない場合は nil を返します。
# lv が指定された場合、lv の深さまで再帰的に平坦化します。









num = gets.to_i
address =  (1..num).map{ gets.chomp.split(" ").map(&:to_i) }


address.each do |a|
    if 数字があるかどうk
        address.slice!()
    else
        
    end
  end


  answers = (1..number).map{gets.chomp}.select{|answer| answer.include?(input)}

  foods.each_with_index do |food,i|
    if food == "melon"
      foods.slice!(i+1,10)
      # 配列から指定された要素をsliceしている。指定の要素を切り取るイメージ
    end
  end







#   C005:アドレス調査

#   ipv4とはがポイント


arr = (1..gets.to_i).map{gets.chomp}

arr.each do |f|
    puts f.match(/^(([1-9]?[0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\.){3}([1-9]?[0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])$/) ? "True" : "False"
end
# ["192.168.0.1", "192.168.0.2", "192.168.0.3", "192.168.0.4"]
# 一つづつeachで判定
# 三項演算子



# D063:お花見の場所取り

# あなたは会社のお花見の場所取り係を任されました。なるべく良い場所を確保するため他の人より早く会場に到着したいところです。


# あなた以外の 5 人の到着する時刻 (分) の情報とあなたの計画する到着予定時刻 (分) が与えられるので、このとき 6 人の中であなたが何番目に到着するかを求めてください。


# 例)

# 他の人の到着時刻: 0, 10, 23, 35, 57

# あなたの到着時刻: 29

# → 0, 10, 23 の人に続いて 4 番目に到着

line = gets.split(' ').map(&:to_i)
you = gets.to_i

# arr = []

line.each_with_index do |l,i|
    if you > l
    line.insert(i+1,you)
    end
end

p line.sort.index(you) +1





# yukiさん
other = gets.split(" ").map(&:to_i)
me = gets.to_i
other << me
p other.sort.index(me) + 1


# indexについて

# [PARAM] val:
# 位置を知りたいオブジェクトを指定します。
# 指定された val と == で等しい最初の要素の位置を返します。等しい要素がひとつもなかった場合は nil を返します。

# p [1, 0, 0, 1, 0].index(1)   #=> 0
# p [1, 0, 0, 0, 0].index(1)   #=> 0
# p [0, 0, 0, 0, 0].index(1)   #=> nil
# ブロックが与えられた場合には、各要素を引数として順にブロックを実行し、ブロックが真を返した最初の要素の位置を返します。一つも真にならなかった場合は nil を返します。

# p [0, 1, 0, 1, 0].index {|v| v > 0}   #=> 1




# C045:ページネーション

input = gets.split(' ').map(&:to_i)
search = input[0]
size = input[1]
num = input[2]


arr = (1..search).to_a
page = arr.slice(1..size)
p page

need = search / size





data = gets.split(" ").map(&:to_i)
# 手を動かすためにも必要そうなものを変数にしてあげる。
all_pages = data[0]
show_pages = data[1]
select_page = data[2]
div_and_mod = all_pages.divmod(show_pages)
div = div_and_mod[0]
mod = div_and_mod[1]

# どんなパターンがありそうか思考
# 最初のページに全部出す場合
if all_pages == show_pages
    if select_page == 1
        puts (1..all_pages).to_a
    else
        puts "none"
    end
# 最後のページを聞かれた場合
elsif div + 1 == select_page
    puts (show_pages*(select_page-1)..all_pages).to_a.join(" ")
# 存在しないページを指定された場合
elsif div + 1  < select_page
    puts "none"
# それ以外
else
    first = (div - 1)*show_pages + 1
    last = div*show_pages
    puts (first..last).to_a.join(" ")
end

# 基本的には3パターンで思考

# divmodについて
# divmod(other) -> [Integer, Numeric][permalink][rdoc]
# self を other で割った商 q と余り r を、 [q, r] という 2 要素の配列にして返します。 商 q は常に整数ですが、余り r は整数であるとは限りません。

# [PARAM] other:
# self を割る数。


